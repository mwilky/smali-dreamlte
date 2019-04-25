.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;
.super Landroid/app/IProcessObserver$Stub;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$2300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$3000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$3000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v4, p2, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->ForegroundAppsCheckLocked(IJ)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$3000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method
