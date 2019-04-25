.class Lcom/android/server/power/PowerManagerService$17;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$17600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$17700(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$13102(Lcom/android/server/power/PowerManagerService;I)I

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$13102(Lcom/android/server/power/PowerManagerService;I)I

    :goto_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAttachStateChanged: attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mCoverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$13100(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "onCoverAttachStateChanged: mCoverManager returns NULL."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/power/PowerManagerService;->access$13202(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCoverAttachStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$17;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$13100(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$13302(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 0

    return-void
.end method
