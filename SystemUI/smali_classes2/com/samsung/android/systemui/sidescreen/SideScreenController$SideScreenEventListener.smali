.class Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;
.super Lcom/samsung/android/multiwindow/ISideScreenEventListener$Stub;
.source "SideScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SideScreenEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;


# direct methods
.method public static synthetic lambda$onLidStateChanged$5(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->onLidStateChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$onSideScreenDockSideChanged$3(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$500(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$502(Lcom/samsung/android/systemui/sidescreen/SideScreenController;I)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$602(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$700(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->onSideScreenDockSideChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->onSideScreenDockSideChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->onSideScreenDockSideChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->onSideScreenDockSideChanged(I)V

    return-void
.end method

.method public static synthetic lambda$onSideScreenMinimizedChanged$6(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->onSideScreenMinimizedChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$onSideScreenModeChanged$4(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->onSideScreenModeChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->onSideScreenModeChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->onSideScreenModeChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->onSideScreenModeChanged(I)V

    return-void
.end method


# virtual methods
.method public onLidStateChanged(Z)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLidStateChanged : opened="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$xmTD7_coF0YXnqun32GXuyvMZ2c;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$xmTD7_coF0YXnqun32GXuyvMZ2c;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSideScreenDockSideChanged(I)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenDockSideChanged : dockSide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$Yx10XAoIBfuQH4guyWtZeSElYNY;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$Yx10XAoIBfuQH4guyWtZeSElYNY;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSideScreenMenuVisibilityChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onSideScreenMinimizedChanged(Z)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenMinimizedChanged. minimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$vh-3f-QWXGryc-uyBCKXxMrVPlY;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$vh-3f-QWXGryc-uyBCKXxMrVPlY;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSideScreenModeChanged(I)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenModeChanged : mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$zrZwBLeOMPwEALCZOOFJ4aeyc2k;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$zrZwBLeOMPwEALCZOOFJ4aeyc2k;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSideScreenTaskSwitched(I)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenTaskSwitched : windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSideScreenVisibilityChanged(Z)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenVisibilityChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    iput-boolean p1, v0, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->mSideScreenVisible:Z

    return-void
.end method

.method public onSideScreenWindowsDrawn(I)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenWindowsDrawn : windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
