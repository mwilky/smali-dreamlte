.class Lcom/android/server/desktopmode/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/UiManager$InternalUiCallback;,
        Lcom/android/server/desktopmode/UiManager$UiServiceConnection;
    }
.end annotation


# static fields
.field private static final STATE_BOUND_CONNECTED:I = 0x2

.field private static final STATE_BOUND_DISCONNECTED:I = 0x3

.field private static final STATE_BOUND_WAITING_FOR_CONNECTION:I = 0x1

.field private static final STATE_UNBOUND:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangingStandaloneMode:Z

.field private mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

.field private mConnectionState:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

.field private mUnbindServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-direct {v0}, Lcom/android/server/desktopmode/PendingUiCommands;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/UiManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/desktopmode/UiManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/UiManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->unbindUiService(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->bindUiService()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/PendingUiCommands;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    return-object v0
.end method

.method private bindUiService()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindUiService(), mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.desktopmode.uiservice"

    const-string v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$1;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    iget v3, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to bind UiService"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private static connectionStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "STATE_BOUND_DISCONNECTED"

    return-object v0

    :pswitch_1
    const-string v0, "STATE_BOUND_CONNECTED"

    return-object v0

    :pswitch_2
    const-string v0, "STATE_BOUND_WAITING_FOR_CONNECTION"

    return-object v0

    :pswitch_3
    const-string v0, "STATE_UNBOUND"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDismissDialog(II)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDismissDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissDialog(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->remove(II)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method private handleDismissPresentation(II)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDismissPresentation(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissPresentation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->remove(II)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method private handleFinishActivity(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFinishActivity(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->finishActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;)V

    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;Z)V

    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;Z)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoteException(), preserve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoteException(), adding pending commands, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method private handleRemoveNotification(I)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoveNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    const/4 v0, -0x1

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$67HYWm_-NMpu_sOEbpAzYhiWKQM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$67HYWm_-NMpu_sOEbpAzYhiWKQM;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNotification(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v5, -0x1

    new-instance v6, Lcom/android/server/desktopmode/-$$Lambda$UiManager$AQgMffUfqqrs6CNu8b3SCwAY7rY;

    invoke-direct {v6, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$AQgMffUfqqrs6CNu8b3SCwAY7rY;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/4 v7, 0x1

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;Z)V

    :goto_0
    return-void
.end method

.method private handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleShowDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$_g8g4bslAVGrefolBLwlPitvohA;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$_g8g4bslAVGrefolBLwlPitvohA;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$n8RknLpN3I3YJFt2a2fx6Hn8ePY;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$n8RknLpN3I3YJFt2a2fx6Hn8ePY;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;)V

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog() mChangingStandaloneMode!! displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog() wrong type value!! dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/server/desktopmode/UiManager$1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/desktopmode/UiManager$1;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/server/desktopmode/UiManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/UiManager$2;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/UiManager;->showDialogOnUiService(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleShowNotification(I)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleShowNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$nSCs0pp_-ThPvjWPuq8W5Aua_Ic;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    new-instance v2, Lcom/android/server/desktopmode/-$$Lambda$UiManager$DkmZ28n5IpVK4sjH63_M3vUhl7I;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$DkmZ28n5IpVK4sjH63_M3vUhl7I;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;)V

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleShowNotification(), mChangingStandaloneMode!!type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v5, -0x1

    new-instance v6, Lcom/android/server/desktopmode/-$$Lambda$UiManager$MeL7nfaR7wNMQBko8IzSyicLeL0;

    invoke-direct {v6, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$MeL7nfaR7wNMQBko8IzSyicLeL0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private handleShowPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleShowPresentation(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$U1lfN12x0D40pdnSHfBRf94zAgc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$U1lfN12x0D40pdnSHfBRf94zAgc;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    new-instance v1, Lcom/android/server/desktopmode/UiManager$3;

    invoke-direct {v1, p0, p3}, Lcom/android/server/desktopmode/UiManager$3;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v0, v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showPresentation(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v6, -0x1

    new-instance v7, Lcom/android/server/desktopmode/-$$Lambda$UiManager$f1MUO3_7i_9sQRR1p5Qn3QoAh4c;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$f1MUO3_7i_9sQRR1p5Qn3QoAh4c;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStartActivity(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    const/4 v0, -0x1

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$AwYGHWx_1P3Nh0Q26UDnJ8jQZA0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$AwYGHWx_1P3Nh0Q26UDnJ8jQZA0;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/desktopmode/UiManager$4;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$4;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->startActivity(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v6, -0x1

    new-instance v7, Lcom/android/server/desktopmode/-$$Lambda$UiManager$DlDswZzx5QvbMBOs-0i8QBhFzVg;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$DlDswZzx5QvbMBOs-0i8QBhFzVg;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private isServiceBound()Z
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$dismissDialog$5(Lcom/android/server/desktopmode/UiManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->handleDismissDialog(II)V

    return-void
.end method

.method public static synthetic lambda$dismissPresentation$9(Lcom/android/server/desktopmode/UiManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->handleDismissPresentation(II)V

    return-void
.end method

.method public static synthetic lambda$finishActivity$20(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleFinishActivity(I)V

    return-void
.end method

.method public static synthetic lambda$handleRemoveNotification$15(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method public static synthetic lambda$handleRemoveNotification$16(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method public static synthetic lambda$handleShowDialog$2(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$handleShowDialog$3(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$handleShowNotification$11(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method public static synthetic lambda$handleShowNotification$12(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method public static synthetic lambda$handleShowNotification$13(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method public static synthetic lambda$handleShowPresentation$7(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$handleShowPresentation$8(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$handleStartActivity$18(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$handleStartActivity$19(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$postUnbindServiceRunnable$21(Lcom/android/server/desktopmode/UiManager;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/PendingUiCommands;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasUiElement()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_2
    :goto_2
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postUnbindServiceRunnable(), hasElement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/UiManager;->unbindUiService(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$removeNotification$14(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method public static synthetic lambda$setCurrentUserId$0(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->unbindUiService(Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->bindUiService()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showDialog$1(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$showDialogOnUiService$4(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$showNotification$10(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method public static synthetic lambda$showPresentation$6(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic lambda$startActivity$17(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private postUnbindServiceRunnable()V
    .locals 5

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$bEzkm2AIz5xze95DiKPsTg0CrMA;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$bEzkm2AIz5xze95DiKPsTg0CrMA;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private resetUnbindServiceRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showDialogOnUiService(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showDialog(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    new-instance v6, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v1, p0

    move v4, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private unbindUiService(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindUiService(), mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$102(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iput-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method bindUiServiceWithPendingCommand(IILjava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IILjava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method bindUiServiceWithPendingCommand(IILjava/lang/Runnable;Z)Z
    .locals 3

    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindUiServiceWithPendingCommand(), already bound, will soon be connected, adding it to pending commands, mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;Z)V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindUiServiceWithPendingCommand(), not bound, adding it to pending commands, try binding, mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands;->add(IILjava/lang/Runnable;Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->bindUiService()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method dismissDialog(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    return-void
.end method

.method dismissDialog(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$q5eDkFmYQvY72wuO2_YkvDoaOYQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$q5eDkFmYQvY72wuO2_YkvDoaOYQ;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dismissPresentation(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "Dialog"

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->getCurrentDialogType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "ExternalPresentation"

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentPresentationType(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "InternalPresentation"

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentPresentationType(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method finishActivity(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$U2uHhKaPTFeix_jt__QsAWpTcRM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$U2uHhKaPTFeix_jt__QsAWpTcRM;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getCurrentDialogType()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCurrentDialogType()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentDialogType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getCurrentPresentationType(I)I
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentPresentationType(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentPresentationType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method hasPresentation(II)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasPresentation(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasPresentation(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isActivityShowing(I)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isActivityShowing(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->isActivityShowing(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeNotification(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$M03AqXChZ9Pbrs2JqzVsXyhdvtw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$M03AqXChZ9Pbrs2JqzVsXyhdvtw;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setChangingStandaloneMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChangingStandaloneMode(), mChangingStandaloneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/PendingUiCommands;->flushCommands(Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method setCurrentUserId(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$XdGTfLPULJiiccs2gvFjXc7wccM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$XdGTfLPULJiiccs2gvFjXc7wccM;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$8x7tKMqwiK6foUHqrepKLxzCfgE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$8x7tKMqwiK6foUHqrepKLxzCfgE;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method showNotification(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$4HVHlWVtBryEaoxxADscPyYjrRw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$4HVHlWVtBryEaoxxADscPyYjrRw;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showPresentation(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/UiManager;->showPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method showPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$WIP2K5w2ooSxJSotJOx7EsamhGE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$WIP2K5w2ooSxJSotJOx7EsamhGE;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$43wWMjHRClVinAD9oU6tY1gC0Rw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$43wWMjHRClVinAD9oU6tY1gC0Rw;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
