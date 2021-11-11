// Copyright 2004-present Facebook. All Rights Reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import <Foundation/Foundation.h>

#import <FBAudienceNetwork/FBAdDefines.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString *FBAdExperienceType NS_STRING_ENUM;
extern FBAdExperienceType const FBAdExperienceTypeRewarded;
extern FBAdExperienceType const FBAdExperienceTypeInterstitial;
extern FBAdExperienceType const FBAdExperienceTypeRewardedInterstitial;

FB_CLASS_EXPORT
/**
 FBAdExperienceConfig is class designed to add some configuration to ad experience
 */
@interface FBAdExperienceConfig : NSObject <NSCopying>

/**
 Ad experience type to set up
 */
@property (nonatomic, strong, readwrite, nonnull) FBAdExperienceType adExperienceType;

- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)new NS_UNAVAILABLE;

/**
 Creates an FBAdExperienceConfig with a specified type of experience
 */
- (instancetype)initWithAdExperienceType:(FBAdExperienceType)adExperienceType NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
