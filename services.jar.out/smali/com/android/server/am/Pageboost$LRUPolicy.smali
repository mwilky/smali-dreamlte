.class final Lcom/android/server/am/Pageboost$LRUPolicy;
.super Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LRUPolicy"
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
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v1}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v7, v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-virtual {p1, v6}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->alive()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5

    :cond_3
    :goto_3
    iput-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    monitor-exit v3

    return-object v1

    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method

.method JudgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

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

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/am/Pageboost$BigDataProxy;->updatePrefetchResult(ZI)V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    monitor-exit v1

    return v0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
