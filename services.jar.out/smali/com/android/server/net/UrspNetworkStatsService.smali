.class public final Lcom/android/server/net/UrspNetworkStatsService;
.super Landroid/os/Handler;
.source "UrspNetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "UrspNetworkStatsService"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkStats:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "start UrspNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/UrspNetworkStatsService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/UrspNetworkStatsService;->mNetworkStats:Landroid/net/INetworkStatsService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspNetworkStatsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;-><init>(Lcom/android/server/net/UrspNetworkStatsService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspNetworkStatsService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspNetworkStatsService;->logn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UrspNetworkStatsService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UrspNetworkStatsService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkStatsService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/net/INetworkStatsService;->getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getIntervalUsageForUrsp exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    return-wide v1
.end method
