.class Lcom/android/server/GraphicsStatsService$2;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GraphicsStatsService;->getSIGraphicsDataRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/GraphicsStatsService;->access$502(Lcom/android/server/GraphicsStatsService;Z)Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$600(Lcom/android/server/GraphicsStatsService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v0, v8

    :goto_0
    :try_start_1
    iget-object v10, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v10}, Lcom/android/server/GraphicsStatsService;->access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_1

    iget-object v10, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v10}, Lcom/android/server/GraphicsStatsService;->access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    iget v10, v10, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    int-to-long v10, v10

    iget-object v12, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v12}, Lcom/android/server/GraphicsStatsService;->access$800(Lcom/android/server/GraphicsStatsService;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    new-instance v10, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v11, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v12, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v12}, Lcom/android/server/GraphicsStatsService;->access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v10, v11, v12}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    move-object v3, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$900(Lcom/android/server/GraphicsStatsService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_2

    :try_start_3
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$1000(Lcom/android/server/GraphicsStatsService;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v10, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-static {v0, v10}, Lcom/android/server/GraphicsStatsService;->access$1100(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v10}, Lcom/android/server/GraphicsStatsService;->access$1000(Lcom/android/server/GraphicsStatsService;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    aget-object v2, v10, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2, v8}, Lcom/android/server/GraphicsStatsService;->access$1200(IZ)J

    move-result-wide v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v13, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v14, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v6, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v4, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v2, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-wide/from16 v16, v6

    move-wide/from16 v18, v4

    move-object/from16 v20, v2

    invoke-static/range {v10 .. v20}, Lcom/android/server/GraphicsStatsService;->access$1300(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide v6, v10

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide v6, v10

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v0, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leaving mSIGraphicsDataRunnable PID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v4}, Lcom/android/server/GraphicsStatsService;->access$800(Lcom/android/server/GraphicsStatsService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_4

    :goto_3
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_b
    const-string v2, "GraphicsStatsService"

    const-string/jumbo v4, "mSIGraphicsDataRunnable "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    :goto_4
    invoke-static {v6, v7}, Lcom/android/server/GraphicsStatsService;->access$1400(J)V

    :cond_3
    iget-object v0, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0, v8}, Lcom/android/server/GraphicsStatsService;->access$502(Lcom/android/server/GraphicsStatsService;Z)Z

    nop

    return-void

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    invoke-static {v6, v7}, Lcom/android/server/GraphicsStatsService;->access$1400(J)V

    :cond_4
    iget-object v2, v1, Lcom/android/server/GraphicsStatsService$2;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v2, v8}, Lcom/android/server/GraphicsStatsService;->access$502(Lcom/android/server/GraphicsStatsService;Z)Z

    throw v0
.end method
