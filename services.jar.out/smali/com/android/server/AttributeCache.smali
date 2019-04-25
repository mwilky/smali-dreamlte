.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesArray:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method

.method private removePackageInnerLocked(Landroid/util/LruCache;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AttributeCache$Package;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AttributeCache$Entry;

    invoke-virtual {v5}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[III)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I[III)Lcom/android/server/AttributeCache$Entry;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LruCache;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/LruCache;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AttributeCache$Package;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    move-object v2, v5

    if-eqz v2, :cond_4

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AttributeCache$Entry;

    move-object v3, v5

    if-eqz v3, :cond_4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    :cond_2
    nop

    :try_start_3
    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eq v6, p5, :cond_3

    iget-object v6, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "display"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    if-eqz v6, :cond_3

    invoke-virtual {v6, p5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v7}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v8
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v8

    :cond_3
    nop

    nop

    :try_start_4
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    invoke-direct {v6, v5}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    move-object v1, v6

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v2, :cond_5

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v5

    invoke-static {v1}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    new-instance v5, Lcom/android/server/AttributeCache$Entry;

    iget-object v6, v1, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v7, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v3, v5

    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v5

    monitor-exit p0

    return-object v4

    :catch_1
    move-exception v5

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public handleDisplayRemoved(I)V
    .locals 1

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LruCache;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AttributeCache;->removePackageInnerLocked(Landroid/util/LruCache;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackagesArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LruCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
