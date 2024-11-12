import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provd_client/provd_client.dart' as provd;
import 'package:ubuntu_init/src/services/provd_pro_service.dart';

import 'provd_pro_service_test.mocks.dart';

@GenerateMocks([provd.ProvdProClient])
void main() {
  test('magic attach', () async {
    final client = MockProvdProClient();
    when(client.proMagicAttach()).thenAnswer((_) {
      return Stream.fromIterable(
        [
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.USER_CODE,
            userCode: '123456',
          ),
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.REFRESHED_USER_CODE,
            userCode: '654321',
          ),
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.SUCCESS,
          ),
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.NETWORK_ERROR,
          ),
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.SUBSCRIPTION_LIMIT_REACHED,
          ),
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.UNKNOWN_ERROR,
          ),
          provd.ProMagicAttachResponse(
            type: provd.ProMagicAttachResponseType.ALREADY_ATTACHED,
          ),
        ],
      );
    });

    final service = ProvdProService(client: client);

    expect(
      service.proMagicAttach(),
      emitsInOrder(
        [
          const TypeMatcher<ProResponseUserCode>()
              .having(
                (response) => response.userCode,
                'user code',
                equals('123456'),
              )
              .having(
                (response) => response.refreshed,
                'refreshed',
                isFalse,
              ),
          const TypeMatcher<ProResponseUserCode>()
              .having(
                (response) => response.userCode,
                'user code',
                equals('654321'),
              )
              .having(
                (response) => response.refreshed,
                'refreshed',
                isTrue,
              ),
          const TypeMatcher<ProResponseSuccess>(),
          const TypeMatcher<ProResponseNetworkError>(),
          const TypeMatcher<ProResponseSubscriptionLimitReached>(),
          const TypeMatcher<ProResponseUnknownError>(),
          const TypeMatcher<ProResponseAlreadyAttached>(),
        ],
      ),
    );
  });

  test('attach with token', () async {
    final client = MockProvdProClient();
    final service = ProvdProService(client: client);

    when(client.proAttach(any)).thenAnswer((_) async {
      return provd.ProAttachResponse(
        type: provd.ProAttachResponse_ProAttachResponseType.SUCCESS,
      );
    });

    await service.proAttach('token');
    verify(client.proAttach('token')).called(1);
  });
}
