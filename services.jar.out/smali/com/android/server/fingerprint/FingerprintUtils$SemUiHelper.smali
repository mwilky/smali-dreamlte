.class Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemUiHelper"
.end annotation


# static fields
.field static final EVT_SYSUI_AUTH_ERROR:I = 0x4

.field static final EVT_SYSUI_DISPLAY_HIDE_FINGEPRINT_GUIDE_VIEW:I = 0x73

.field static final EVT_SYSUI_DISPLAY_HIDE_OVERLAYMASK_VIEW:I = 0x12d

.field static final EVT_SYSUI_DISPLAY_HIDE_SENSOR_VIEW:I = 0x12e

.field static final EVT_SYSUI_DISPLAY_MOVE_SENSOR_ICON:I = 0x74

.field static final EVT_SYSUI_DISPLAY_PAUSE_SENSOR_ICON:I = 0x70

.field static final EVT_SYSUI_DISPLAY_RESUME_SENSOR_ICON:I = 0x71

.field static final EVT_SYSUI_DISPLAY_SCREEN_OFF:I = 0xc9

.field static final EVT_SYSUI_DISPLAY_SCREEN_ON:I = 0xc8

.field static final EVT_SYSUI_DISPLAY_SHOW_OVERLAYMASK_VIEW:I = 0x12c

.field static final EVT_SYSUI_DISPLAY_START_SENSOR_ICON_ANI:I = 0x72

.field static final EVT_SYSUI_PROMPT_AUTH_FAILED:I = 0x2

.field static final EVT_SYSUI_PROMPT_AUTH_HELP:I = 0x3

.field static final EVT_SYSUI_PROMPT_SHOW_NAME:I = 0x1


# instance fields
.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private deliverEventToSystemUI(IILjava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception when sending onFingerprintEvent  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method hideAuthenticationCue()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending hideFingerprintDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method hideFingerprintGuideView(I)V
    .locals 2

    const/16 v0, 0x73

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method hideOverlayMaskView()V
    .locals 3

    const/16 v0, 0x12d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method hideSensorView()V
    .locals 3

    const/16 v0, 0x12e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method moveSensorIcon(I)V
    .locals 2

    const/16 v0, 0x74

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method onAuthenticatedName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method onAuthenticationFailed(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method onError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method onHelp(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method onScreenOff()V
    .locals 3

    const/16 v0, 0xc9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method onScreenOn()V
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method pauseSensorIcon()V
    .locals 3

    const/16 v0, 0x70

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method resumeSensorIcon()V
    .locals 3

    const/16 v0, 0x71

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method showAuthenticationCue(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending showFingerprintDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method showOverlayMaskView()V
    .locals 3

    const/16 v0, 0x12c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method

.method startSensorIconAnimation(I)V
    .locals 2

    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    return-void
.end method
