import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/src/generated/pro.pbgrpc.dart';
import 'package:provd_client/src/provd_pro_client.dart';
import 'package:test/test.dart';

import 'provd_pro_client_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([ProServiceClient])
void main() {
  final mockProServiceClient = MockProServiceClient();
  final proClient = ProvdProClient.withClient(mockProServiceClient);

  test('magic attach', () {
    when(mockProServiceClient.proMagicAttach(any)).thenAnswer((_) {
      return MockResponseStream<ProMagicAttachResponse>(
        Stream.fromIterable(
          [
            ProMagicAttachResponse(
              type: ProMagicAttachResponseType.USER_CODE,
              userCode: '123456',
            ),
            ProMagicAttachResponse(
              type: ProMagicAttachResponseType.SUCCESS,
            ),
          ],
        ),
      );
    });

    expect(
      proClient.proMagicAttach(),
      emitsInOrder(
        [
          ProMagicAttachResponse(
            type: ProMagicAttachResponseType.USER_CODE,
            userCode: '123456',
          ),
          ProMagicAttachResponse(
            type: ProMagicAttachResponseType.SUCCESS,
          ),
        ],
      ),
    );
  });

  test('attach with token', () async {
    when(mockProServiceClient.proAttach(any)).thenAnswer((_) {
      return MockResponseFuture<ProAttachResponse>(
        ProAttachResponse(
          type: ProAttachResponse_ProAttachResponseType.SUCCESS,
        ),
      );
    });

    await proClient.proAttach('token');
    verify(mockProServiceClient.proAttach(ProAttachRequest(token: 'token')))
        .called(1);
  });
}
