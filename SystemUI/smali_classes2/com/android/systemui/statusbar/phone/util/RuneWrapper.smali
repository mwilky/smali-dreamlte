.class public Lcom/android/systemui/statusbar/phone/util/RuneWrapper;
.super Ljava/lang/Object;
.source "RuneWrapper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/util/FeatureChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHideCscPolicy()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/Rune;->NAVBAR_HIDE_CSC_POLICY:Ljava/lang/String;

    return-object v0
.end method

.method public isForceImmersiveSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGSimLogSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_GSIM_LOG:Z

    return v0
.end method

.method public isOpenThemeSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    return v0
.end method

.method public isRemoteViewSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    return v0
.end method

.method public isSupportGestureExtraArea()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE_EXTRA_AREA:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    return v0
.end method
