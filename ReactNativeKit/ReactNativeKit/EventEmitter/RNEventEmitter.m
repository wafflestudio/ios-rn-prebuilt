#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(RNEventEmitter, RCTEventEmitter)
  RCT_EXTERN_METHOD(supportedEvents)
  RCT_EXTERN_METHOD(sendEventToNative:(NSString *)name payload:(NSDictionary *)payload)
@end
