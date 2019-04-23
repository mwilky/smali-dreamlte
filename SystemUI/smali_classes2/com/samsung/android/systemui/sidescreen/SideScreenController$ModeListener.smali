.class Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;
.super Ljava/lang/Object;
.source "SideScreenController.java"

# interfaces
.implements Lcom/samsung/android/systemui/sidescreen/SideScreenModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;


# direct methods
.method public static synthetic lambda$onModeChanged$0(Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$800(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$900(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->setTouchable(Z)V

    return-void
.end method


# virtual methods
.method public onModeChanged(II)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->menuModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
