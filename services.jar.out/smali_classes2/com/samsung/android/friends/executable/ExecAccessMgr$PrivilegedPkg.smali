.class Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/executable/ExecAccessMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivilegedPkg"
.end annotation


# static fields
.field private static final TIME_INTERVAL:J = 0x1d4c0L


# instance fields
.field private final mFingerprint:[B

.field private mLastGrantedTime:J

.field private final mPkgName:Ljava/lang/String;

.field private final mPlatformKeyOnly:Z

.field private mUid:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Z[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    iput-boolean p2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Z[BLcom/samsung/android/friends/executable/ExecAccessMgr$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->isCachedGranted(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->setCachedGranted(I)V

    return-void
.end method

.method private isCachedGranted(Ljava/lang/String;I)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    sub-long v1, v6, v8

    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez p2, :cond_0

    iget v3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    if-ne v3, p2, :cond_0

    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v1, v6

    if-gtz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v0, v3

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "ExecAccessMgr"

    const-string v6, "isCachedGranted %s %s %d %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p1}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "android"

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "ExecAccessMgr"

    const-string v4, "isGranted %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method private setCachedGranted(I)V
    .locals 7

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    iget-wide v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-wide v0, v2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ExecAccessMgr"

    const-string/jumbo v3, "setCachedGranted %d %s %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
