package ageverification

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"time"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
)

const userDataDir = "/var/lib/AccountsService/users"

type Service struct {
	pb.UnimplementedAgeVerificationServer
}

type userData struct {
	BirthYear int `json:"birth_year"`
}

func (s *Service) SetAge(ctx context.Context, req *pb.SetAgeRequest) (*pb.SetAgeResponse, error) {
	username := req.Username
	if username == "" {
		return nil, fmt.Errorf("username required")
	}
	
	data := userData{BirthYear: int(req.BirthYear)}
	file, err := json.Marshal(data)
	if err != nil {
		return nil, err
	}
	
	userFile := filepath.Join(userDataDir, username+".age")
	if err := os.WriteFile(userFile, file, 0600); err != nil {
		return nil, err
	}
	
	return &pb.SetAgeResponse{}, nil
}

func (s *Service) GetAgeBracket(ctx context.Context, req *pb.GetAgeBracketRequest) (*pb.GetAgeBracketResponse, error) {
	username := req.Username
	if username == "" {
		return &pb.GetAgeBracketResponse{Bracket: pb.AgeBracket_UNKNOWN}, nil
	}
	
	userFile := filepath.Join(userDataDir, username+".age")
	file, err := os.ReadFile(userFile)
	if err != nil {
		return &pb.GetAgeBracketResponse{Bracket: pb.AgeBracket_UNKNOWN}, nil
	}
	
	var data userData
	if err := json.Unmarshal(file, &data); err != nil {
		return &pb.GetAgeBracketResponse{Bracket: pb.AgeBracket_UNKNOWN}, nil
	}
	
	age := time.Now().Year() - data.BirthYear
	bracket := calculateBracket(age)
	
	return &pb.GetAgeBracketResponse{Bracket: bracket}, nil
}

func calculateBracket(age int) pb.AgeBracket {
	if age < 13 {
		return pb.AgeBracket_UNDER_13
	} else if age >= 13 && age < 16 {
		return pb.AgeBracket_AGE_13_TO_15
	} else if age >= 16 && age < 18 {
		return pb.AgeBracket_AGE_16_TO_17
	}
	return pb.AgeBracket_AGE_18_PLUS
}

