.class Lcom/android/server/desktopmode/TouchpadManager$4;
.super Ljava/lang/Object;
.source "TouchpadManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_3

    :cond_1
    const/16 v2, 0x4002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    const-string/jumbo v2, "sec_e-pen-pad"

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/TouchpadManager;->access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$300(Lcom/android/server/desktopmode/TouchpadManager;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$700(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$800(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->access$900(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_3
    return-void
.end method
