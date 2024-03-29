.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;
.super Ljava/lang/Object;
.source "SendLogTask.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# instance fields
.field private configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

.field private log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;


# direct methods
.method constructor <init>(Lcom/sec/android/diagmonagent/sa/IDMAInterface;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sdkPolicy:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getTimestamp()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/diagmonagent/sa/IDMAInterface;->sendLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
