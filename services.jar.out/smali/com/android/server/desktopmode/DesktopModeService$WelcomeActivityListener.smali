.class Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WelcomeActivityListener"
.end annotation


# instance fields
.field private mPresentationShown:Z

.field private mShown:Z

.field private mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    return-void
.end method

.method private handleOnDismiss()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    invoke-direct {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    invoke-direct {p0, v2, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    :cond_0
    return-void
.end method

.method private handleOnShow()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissPresentation(ZZ)V

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v2

    const/16 v4, 0xa

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(ZII)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeService;->cancelOngoingNotification()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v2, v3}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    return-void
.end method

.method public static synthetic lambda$cFdXMS5aTWTHWKPbEF4PVGsMdS8(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnDismiss()V

    return-void
.end method

.method public static synthetic lambda$fJAJLJbrS3gRZioWaDFMvZ0t4BA(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->handleOnShow()V

    return-void
.end method

.method private setDesktopModeState(ZII)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeState(II)V

    return-void
.end method

.method private showOrDismissPresentation(ZZ)V
    .locals 4

    const/16 v0, 0x6f

    const/16 v1, 0x67

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showing external presentation"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4400(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dismissing external presentation"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mPresentationShown:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4400(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$4500(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method onClickButtonPositive()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$3700(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "hdmi_initial_connection_dialog_shown"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isPogoKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "pogo_initial_connection_dialog_shown"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$4600(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$cFdXMS5aTWTHWKPbEF4PVGsMdS8;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$cFdXMS5aTWTHWKPbEF4PVGsMdS8;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onShow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$4600(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$fJAJLJbrS3gRZioWaDFMvZ0t4BA;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$WelcomeActivityListener$fJAJLJbrS3gRZioWaDFMvZ0t4BA;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
