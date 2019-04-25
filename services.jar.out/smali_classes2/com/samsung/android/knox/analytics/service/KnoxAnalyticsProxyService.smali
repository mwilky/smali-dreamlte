.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;
.super Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;
.source "KnoxAnalyticsProxyService.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 4

    const-string v0, "knox_analytics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsProxyService;->TAG:Ljava/lang/String;

    const-string v3, "log() proxy failed"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
