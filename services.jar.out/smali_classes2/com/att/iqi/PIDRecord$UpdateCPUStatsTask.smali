.class Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;
.super Ljava/lang/Object;
.source "PIDRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/PIDRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCPUStatsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/PIDRecord;


# direct methods
.method private constructor <init>(Lcom/att/iqi/PIDRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/PIDRecord;Lcom/att/iqi/PIDRecord$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;-><init>(Lcom/att/iqi/PIDRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v0}, Lcom/att/iqi/PIDRecord;->access$000(Lcom/att/iqi/PIDRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    int-to-long v2, v1

    :try_start_0
    iget-object v4, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v4}, Lcom/att/iqi/PIDRecord;->access$100(Lcom/att/iqi/PIDRecord;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v4

    long-to-int v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exception thrown "

    invoke-static {v2, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v0}, Lcom/att/iqi/PIDRecord;->access$300(Lcom/att/iqi/PIDRecord;)I

    move-result v0

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v0, v1}, Lcom/att/iqi/PIDRecord;->access$302(Lcom/att/iqi/PIDRecord;I)I

    :cond_2
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PID ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v2}, Lcom/att/iqi/PIDRecord;->access$200(Lcom/att/iqi/PIDRecord;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Total CPU "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v2}, Lcom/att/iqi/PIDRecord;->access$300(Lcom/att/iqi/PIDRecord;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Max Memory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v2}, Lcom/att/iqi/PIDRecord;->access$400(Lcom/att/iqi/PIDRecord;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stats file for PID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v4}, Lcom/att/iqi/PIDRecord;->access$200(Lcom/att/iqi/PIDRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is gone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-static {v3, v0}, Lcom/att/iqi/PIDRecord;->access$002(Lcom/att/iqi/PIDRecord;Z)Z

    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-virtual {v0}, Lcom/att/iqi/PIDRecord;->stopTracking()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Exception "

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method
