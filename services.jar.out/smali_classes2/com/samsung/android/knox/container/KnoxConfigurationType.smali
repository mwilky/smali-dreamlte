.class public Lcom/samsung/android/knox/container/KnoxConfigurationType;
.super Ljava/lang/Object;
.source "KnoxConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MIN_INVALID_PASSWORD_LEN:I = 0x11

.field private static final TAG:Ljava/lang/String; = "KnoxConfigurationType"


# instance fields
.field protected mAdminUid:I

.field private mAllowChangeDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mAllowMultiwindowMode:Z

.field private mAllowSwitch:Z

.field protected mAllowTaskManager:Z

.field protected mAllowUSBDebugging:Z

.field protected mAppInstallationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

.field protected mBiometricAuthValue:I

.field protected mCustomBadgeIcon:Ljava/lang/String;

.field protected mCustomHomeScreenWallpaper:Ljava/lang/String;

.field protected mCustomLockScreenWallpaper:Ljava/lang/String;

.field protected mCustomStatusIcon:Ljava/lang/String;

.field protected mCustomStatusLabel:Ljava/lang/String;

.field protected mEC:Z

.field protected mECBadge:Ljava/lang/String;

.field protected mECIcon:Ljava/lang/String;

.field protected mECName:Ljava/lang/String;

.field protected mFOTADisableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFOTAReenableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mForbiddenStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGoogleAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsBiometricAuthEnabled:Z

.field private mIsDefaultConfigType:Z

.field protected mKeyguardDisabledFeatures:I

.field private mLayoutType:I

.field protected mManagedType:Z

.field protected mMaximumCharacterOccurences:I

.field protected mMaximumCharacterSequenceLength:I

.field protected mMaximumFailedPasswordsForWipe:I

.field protected mMaximumNumericSequenceLength:I

.field protected mMaximumTimeToLock:I

.field protected mMultifactorAuthEnabled:Z

.field protected mName:Ljava/lang/String;

.field protected mNameIcon:Ljava/lang/String;

.field protected mPasswordMinimumLength:I

.field protected mPasswordMinimumLetters:I

.field protected mPasswordMinimumLowerCase:I

.field protected mPasswordMinimumNonLetters:I

.field protected mPasswordMinimumNumeric:I

.field protected mPasswordMinimumSymbols:I

.field protected mPasswordMinimumUpperCase:I

.field protected mPasswordPattern:Ljava/lang/String;

.field protected mPasswordQuality:I

.field protected mPersonaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mProtectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRCPNotifSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mSimplePasswordEnabled:Z

.field protected mUserId:I

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/KnoxConfigurationType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    const-string v2, "custom"

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    new-instance v3, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    const-string v2, "custom"

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    new-instance v4, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    iput-boolean v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    iput-boolean v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    iput v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, "custom"

    iput-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x0

    :cond_5
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v0

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    const-string v4, "KnoxConfigurationType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reading from parcel mEC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v1, 0x0

    :cond_8
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_17

    move v4, v3

    goto :goto_3

    :cond_17
    move v4, v0

    :goto_3
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_18

    move v4, v3

    goto :goto_4

    :cond_18
    move v4, v0

    :goto_4
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_19

    move v4, v3

    goto :goto_5

    :cond_19
    move v4, v0

    :goto_5
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1a

    move v4, v3

    goto :goto_6

    :cond_1a
    move v4, v0

    :goto_6
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1b

    move v4, v3

    goto :goto_7

    :cond_1b
    move v4, v0

    :goto_7
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1c

    move v4, v3

    goto :goto_8

    :cond_1c
    move v4, v0

    :goto_8
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1d

    move v4, v3

    goto :goto_9

    :cond_1d
    move v4, v0

    :goto_9
    iput-boolean v4, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_1e

    move v0, v3

    nop

    :cond_1e
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/AuthenticationConfig;

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return-void
.end method

.method private deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object v8, v6

    move-object v6, v1

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v10

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move-object v1, v6

    move-object v6, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpEIDConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)V
    .locals 5

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationConfig:enforceRemoteAuthAlways:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationConfig:forceEnterpriseIdentityLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationConfig:hideEnterpriseIdentityLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationConfig:authenticatorPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationConfig:authenticatorPkgSignature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KnoxConfigurationType"

    const-string v1, "AuthenticationConfig:authenticatorConfig:null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "KnoxConfigurationType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AuthenticationConfig:authenticatorConfig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private dumpRCPSettings(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "KnoxConfigurationType"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    const-string v6, "KnoxConfigurationType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v4, "KnoxConfigurationType"

    const-string v5, " }"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {v2, v7}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v0, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method

.method private setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p4, :cond_8

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    goto/16 :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {v7, v3}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "KnoxConfigurationType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring the duplicate entry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "KnoxConfigurationType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "property found, remove and add it again: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    :goto_4
    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public addPersonaId(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public allowLayoutSwitching(Z)V
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowLayoutSwitching: allowSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    return-void
.end method

.method public allowMultiwindowMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    return-void
.end method

.method public allowTaskManager(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    return-void
.end method

.method public allowUSBDebugging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    return-void
.end method

.method public clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "KnoxConfigurationType"

    const-string v1, "clone(): name is either null or empty, hence returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerNameIcon(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomizedContainerBadge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setEnterpriseIdentityAuthenticationData(Lcom/samsung/android/knox/container/AuthenticationConfig;)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpState()V
    .locals 0

    return-void
.end method

.method public enforceMultifactorAuthentication(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    return-void
.end method

.method public getAdminUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    return v0
.end method

.method public getAirCommandEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowAllShare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowChangeDataSyncPolicy()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAllowChangeDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getAllowContainerReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowCustomBadgeIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowCustomColorIdentification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowCustomPersonaIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowDLNADataTransfer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowExportAndDeleteFiles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowExportFiles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowImportFiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowPrint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowShortCutCreation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowUniversalCallerId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAppInstallationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    return-object v0
.end method

.method public getAppRemoveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getBiometricAuthenticationEnabledType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    return v0
.end method

.method public getBiometricAuthenticationEnabledValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    return v0
.end method

.method public getCameraModeChangeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContainerLayout()I
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainerLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    return v0
.end method

.method public getCustomBadgeIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomHomeScreenWallpaper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomLockScreenWallpaper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomStatusIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomStatusLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomizedContainerBadge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomizedContainerIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomizedContainerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomizedContainerNameIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataSyncPolicy()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDisableSwitchWidgetOnLockScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    return-object v0
.end method

.method public getFOTADisableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    return-object v0
.end method

.method public getFOTAReenableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    return-object v0
.end method

.method public getForbiddenStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    return-object v0
.end method

.method public getGearSupportEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getGoogleAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    return-object v0
.end method

.method public getKeyguardDisabledFeatures()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return v0
.end method

.method public getListFromAllowChangeDataSyncPolicy(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getListFromDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManagedType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    return v0
.end method

.method public getMaximumCharacterOccurences()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    return v0
.end method

.method public getMaximumCharacterSequenceLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    return v0
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    return v0
.end method

.method public getMaximumTimeToLock()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    return v0
.end method

.method public getModifyLockScreenTimeout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getRCPSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationSyncPolicy()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackagesFromNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getListFromSyncPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordMinimumLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    return v0
.end method

.method public getPasswordMinimumLetters()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    return v0
.end method

.method public getPasswordMinimumLowerCase()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    return v0
.end method

.method public getPasswordMinimumNonLetters()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    return v0
.end method

.method public getPasswordMinimumNumeric()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    return v0
.end method

.method public getPasswordMinimumSymbols()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    return v0
.end method

.method public getPasswordMinimumUpperCase()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    return v0
.end method

.method public getPasswordQuality()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    return v0
.end method

.method public getPenWindowEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPersonaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    return-object v0
.end method

.method public getProtectedPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredPwdPatternRestrictions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getSimplePasswordEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isBiometricAuthenticationEnabled(I)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    if-eqz v0, :cond_1

    const-string v1, "KnoxConfigurationType"

    const-string v2, "isBiometricAuthenticationEnabled: return true (hasValue)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method

.method public isCustomizedContainerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    return v0
.end method

.method public isDefaultConfigType()Z
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultConfigType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    return v0
.end method

.method public isLayoutSwitchingAllowed()Z
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLayoutSwitchingAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    return v0
.end method

.method public isMultifactorAuthenticationEnforced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    return v0
.end method

.method public isMultiwindowModeAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    return v0
.end method

.method public isTaskManagerAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    return v0
.end method

.method public isUSBDebuggingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    return v0
.end method

.method public isUserManaged()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removePersonaId(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAdminUid:I

    return-void
.end method

.method public setAirCommandEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setAllowAllShare(Z)V
    .locals 0

    return-void
.end method

.method public setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setAllowContainerReset(Z)V
    .locals 0

    return-void
.end method

.method public setAllowCustomBadgeIcon(Z)V
    .locals 0

    return-void
.end method

.method public setAllowCustomColorIdentification(Z)V
    .locals 0

    return-void
.end method

.method public setAllowCustomPersonaIcon(Z)V
    .locals 0

    return-void
.end method

.method public setAllowDLNADataTransfer(Z)V
    .locals 0

    return-void
.end method

.method public setAllowExportAndDeleteFiles(Z)V
    .locals 0

    return-void
.end method

.method public setAllowExportFiles(Z)V
    .locals 0

    return-void
.end method

.method public setAllowImportFiles(Z)V
    .locals 0

    return-void
.end method

.method public setAllowPrint(Z)V
    .locals 0

    return-void
.end method

.method public setAllowShortCutCreation(Z)V
    .locals 0

    return-void
.end method

.method public setAllowUniversalCallerId(Z)V
    .locals 0

    return-void
.end method

.method public setAppInstallationList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setAppRemoveList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setBiometricAuthenticationEnabled(IZ)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    if-lez v1, :cond_1

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    :cond_1
    if-eqz p2, :cond_2

    or-int/2addr v0, p1

    goto :goto_0

    :cond_2
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    iget v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    :goto_1
    const-string v1, "KnoxConfigurationType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBiometricAuthenticationEnabled : bioAuth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCameraModeChangeEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setContainerLayout(I)V
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultContainerLayout: layoutType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    return-void
.end method

.method public setCustomBadgeIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    return-void
.end method

.method public setCustomHomeScreenWallpaper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    return-void
.end method

.method public setCustomLockScreenWallpaper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    return-void
.end method

.method public setCustomStatusIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    return-void
.end method

.method public setCustomStatusLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerBadge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    return-void
.end method

.method public setCustomizedContainerIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting ecname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    return-void
.end method

.method public setCustomizedContainerNameIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    return-void
.end method

.method public setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setDefaultConfigType(Z)V
    .locals 3

    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultConfigType: isDefaultConfigType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    return-void
.end method

.method public setDisableSwitchWidgetOnLockScreen(Z)V
    .locals 0

    return-void
.end method

.method public setEnterpriseIdentityAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V

    return-void
.end method

.method public setEnterpriseIdentityAuthenticationData(Lcom/samsung/android/knox/container/AuthenticationConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    :cond_0
    return-void
.end method

.method public setFOTADisableList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFOTAReenableList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setForbiddenStrings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setGearSupportEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setGoogleAppsList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setKeyguardDisabledFeatures(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return-void
.end method

.method public setManagedType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    return-void
.end method

.method public setMaximumCharacterOccurences(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    :cond_0
    return-void
.end method

.method public setMaximumCharacterSequenceLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    :cond_0
    return-void
.end method

.method public setMaximumNumericSequenceLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    :cond_0
    return-void
.end method

.method public setModifyLockScreenTimeout(Z)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setRCPSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setPasswordMinimumLength(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLetters(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetters(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    :cond_0
    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    :cond_0
    return-void
.end method

.method public setPenWindowEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setPersonaList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setProtectedPackageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setRCPSyncPolicy(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    new-instance v8, Landroid/util/Pair;

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v8

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    return-void
.end method

.method public setSimplePasswordEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mUserId:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    const-string v0, "KnoxConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writing to parcel mEC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_a
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_b
    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
