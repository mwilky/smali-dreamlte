.class Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->checkVersioningBlobWhenBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkVersioningBlobWhenBootCompleted(): run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$800(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$900(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$900(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Ljava/lang/Object;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkVersioningBlobWhenBootCompleted(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkVersioningBlobWhenBootCompleted(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkVersioningBlobWhenBootCompleted(): after while"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$1000(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsVersionCollector;->checkVersioningBlob(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$1000(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callNotifyVersioningCompleted(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$1100(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Lcom/samsung/android/knox/analytics/service/EventQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$2;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$1100(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)Lcom/samsung/android/knox/analytics/service/EventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->notifyVersioningCompleted()V

    :cond_1
    return-void
.end method
