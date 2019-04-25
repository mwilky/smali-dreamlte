.class final Lcom/android/server/am/Pageboost$SIPolicy;
.super Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SIPolicy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>(Lcom/android/server/am/Pageboost$1;)V

    return-void
.end method


# virtual methods
.method AppFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
    .locals 12

    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1100()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1100()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sysint/SemSysIntManager;->isSysIntRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "si policy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1100()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sysint/SemSysIntManager;->getNextAppRanking(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sysint/SysIntResponse;

    invoke-virtual {v6}, Lcom/samsung/android/sysint/SysIntResponse;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->alive()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ghost selection : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    add-int/lit8 v4, v4, 0x1

    :cond_1
    if-lt v4, p2, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "si policy : null list"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-object v1, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :cond_5
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init for SI Policy is not done yet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1100()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v0
.end method

.method JudgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Pageboost$SIPolicy;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ghost selection hit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ghost selection found candidate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1100()Lcom/samsung/android/sysint/SemSysIntManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    int-to-long v4, p2

    iget-object v6, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/sysint/SemSysIntManager;->launchFeedbackForNextApp(Ljava/lang/String;JLjava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/am/Pageboost$BigDataProxy;->updatePrefetchResult(ZI)V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/Pageboost$SIPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :cond_3
    :goto_2
    monitor-exit v1

    return v0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
