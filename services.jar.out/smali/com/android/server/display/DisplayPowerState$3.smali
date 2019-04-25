.class Lcom/android/server/display/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$002(Lcom/android/server/display/DisplayPowerState;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    nop

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$600(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->access$400(Lcom/android/server/display/DisplayPowerState;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->access$500(Lcom/android/server/display/DisplayPowerState;)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DisplayPowerState"

    const-string v3, "Screen ready"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerState;->access$802(Lcom/android/server/display/DisplayPowerState;Z)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$900(Lcom/android/server/display/DisplayPowerState;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$700()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DisplayPowerState"

    const-string v2, "Screen not ready"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
