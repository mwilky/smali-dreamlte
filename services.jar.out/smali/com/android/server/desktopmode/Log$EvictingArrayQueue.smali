.class Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvictingArrayQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private final mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPointer:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mPointer:I

    iput p1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mPointer:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mPointer:I

    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mPointer:I

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    nop

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget v6, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mPointer:I

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v6, v7

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
