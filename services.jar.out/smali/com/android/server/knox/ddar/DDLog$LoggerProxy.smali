.class public Lcom/android/server/knox/ddar/DDLog$LoggerProxy;
.super Ljava/lang/Object;
.source "DDLog.java"

# interfaces
.implements Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggerProxy"
.end annotation


# static fields
.field public static final LOG_MSG:Ljava/lang/String; = "LOG_MSG"

.field public static final LOG_MSG_COMMAND:Ljava/lang/String; = "LOG_MSG_COMMAND"

.field private static mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DDLog"

    const-string v1, "Logger ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/knox/ddar/DDLog$Logger;->createInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$Logger;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$LoggerProxy;
    .locals 2

    const-class v0, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    :cond_0
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/ddar/DDLog$LoggerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6d6d3bb2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "LOG_MSG_COMMAND"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "LOG_MSG"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
