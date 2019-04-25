.class Lcom/android/server/desktopmode/UiManager$4;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/UiManager;

.field final synthetic val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$4;->this$0:Lcom/android/server/desktopmode/UiManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onClickButtonNegative()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonNegative()V

    :cond_0
    return-void
.end method

.method public onClickButtonPositive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onClickButtonPositive()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$4;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;->onShow()V

    :cond_0
    return-void
.end method
