.class public Landroid/net/dhcp/SemDhcpClientUtil;
.super Ljava/lang/Object;
.source "SemDhcpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DHCP_CONFIG_FILE:Ljava/lang/String;

.field private static final KEY_BSSID:Ljava/lang/String; = "bssid"

.field private static final KEY_DEFAULT_ROUTER_MAC:Ljava/lang/String; = "default_router_mac"

.field private static final KEY_IP:Ljava/lang/String; = "ip"

.field private static final KEY_LEASE_DURATION:Ljava/lang/String; = "lease_duration"

.field private static final KEY_PREFIX:Ljava/lang/String; = "ip_prefix"

.field private static final KEY_SERVER_IP:Ljava/lang/String; = "server_ip"

.field private static final KEY_UPDATED:Ljava/lang/String; = "last_updated"

.field private static final LEASE_FILE_VERSION:I = 0x2

.field private static final MAX_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DhcpClientUtils"

.field private static final mSaveLeaseFile:Z = false

.field private static sInstance:Landroid/net/dhcp/SemDhcpClientUtil;


# instance fields
.field private final mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/wifi/dhcp_lease.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/dhcp/SemDhcpClientUtil;->loadConfigFile(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndRemoveInvalidlist()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {v2}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLeaseDurationExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v3, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "00:00:00:00:00:00"

    iget-object v4, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance()Landroid/net/dhcp/SemDhcpClientUtil;
    .locals 2

    const-class v0, Landroid/net/dhcp/SemDhcpClientUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/dhcp/SemDhcpClientUtil;

    invoke-direct {v1}, Landroid/net/dhcp/SemDhcpClientUtil;-><init>()V

    sput-object v1, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;

    :cond_0
    sget-object v1, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadConfigFile(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DhcpClientUtils"

    const-string/jumbo v1, "loadConfigFile - not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {v2}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "DhcpClientUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDhcpResult - matched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLeaseDurationExpired()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DhcpClientUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bssid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - isLeaseDurationExpired"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2}, Landroid/net/DhcpResults;-><init>()V

    :try_start_0
    new-instance v3, Landroid/net/LinkAddress;

    iget-object v4, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/dhcp/SemDhcpClientUtil;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    iget v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/dhcp/SemDhcpClientUtil;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    iput-object v0, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    return-object v2

    :catch_0
    move-exception v3

    return-object v0

    :cond_3
    :goto_0
    const-string v1, "DhcpClientUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDhcpResult - bssid is not matched "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public saveDhcpResult(Ljava/lang/String;Landroid/net/DhcpResults;)V
    .locals 4

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DhcpClientUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveDhcpResult bssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "DhcpClientUtils"

    const-string/jumbo v1, "failed to save dhcp result - bssid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_7

    iget-object v0, p2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v0, :cond_7

    iget-object v0, p2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>(Landroid/net/dhcp/SemDhcpClientUtil$1;)V

    iput-object p1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    iput v1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    iget-object v1, p2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    iget v1, p2, Landroid/net/DhcpResults;->leaseDuration:I

    iput v1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLastUpdatedInfo:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->equals(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "DhcpClientUtils"

    const-string/jumbo v3, "saveDhcpResult - not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    :goto_0
    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "DhcpClientUtils"

    const-string/jumbo v1, "failed to save dhcp result - dhcp result is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public updateDefaultRouteMacAddress(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_1

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DhcpClientUtils"

    const-string/jumbo v1, "failed to updateDefaultRouteMacAddress - bssid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "DhcpClientUtils"

    const-string/jumbo v1, "failed to updateDefaultRouteMacAddress - defaultGwMacAddress is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-eqz v0, :cond_4

    iput-object p2, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/dhcp/SemDhcpClientUtil;->updateLeaseDurationForSameNetwork(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/net/dhcp/SemDhcpClientUtil;->checkAndRemoveInvalidlist()V

    return-void
.end method

.method public updateLeaseDurationForSameNetwork(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DhcpClientUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLeaseDurationForSameNetwork bssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , isUpdateIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-nez v0, :cond_3

    sget-boolean v1, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "DhcpClientUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in the mMap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-nez p3, :cond_5

    iget-object v4, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    iput v4, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    iget-wide v4, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iput-wide v4, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-object v4, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v4, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->defaultRouterMacAddress:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    iput v4, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->leaseDuration:I

    iget-wide v4, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iput-wide v4, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-object v4, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v3, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    :goto_3
    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "DhcpClientUtils"

    const-string/jumbo v1, "failed to updateLeaseDurationForSameNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
