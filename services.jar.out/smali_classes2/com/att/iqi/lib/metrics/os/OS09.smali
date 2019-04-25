.class public Lcom/att/iqi/lib/metrics/os/OS09;
.super Lcom/att/iqi/lib/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/metrics/os/OS09$CpuComparator;,
        Lcom/att/iqi/lib/metrics/os/OS09$MemComparator;,
        Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/os/OS09;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "OS09"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/os/OS09;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/os/OS09$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/os/OS09$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/os/OS09;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    new-instance v1, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    invoke-direct {v1, p1}, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;-><init>(Landroid/os/Parcel;)V

    iget-object v2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    new-instance v1, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    invoke-direct {v1, p1}, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;-><init>(Landroid/os/Parcel;)V

    iget-object v2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addProcessInfo(IIJILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;-><init>()V

    iput p1, v0, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->a:I

    iput p2, v0, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->b:I

    iput-wide p3, v0, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->c:J

    iput p5, v0, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->d:I

    iput-object p6, v0, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/att/iqi/lib/metrics/os/OS09;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    new-instance p3, Lcom/att/iqi/lib/metrics/os/OS09$CpuComparator;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/att/iqi/lib/metrics/os/OS09$CpuComparator;-><init>(Lcom/att/iqi/lib/metrics/os/OS09$1;)V

    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0xa

    if-le p2, p3, :cond_0

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    new-instance p5, Lcom/att/iqi/lib/metrics/os/OS09$MemComparator;

    invoke-direct {p5, p4}, Lcom/att/iqi/lib/metrics/os/OS09$MemComparator;-><init>(Lcom/att/iqi/lib/metrics/os/OS09$1;)V

    invoke-static {p2, p5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p3, :cond_1

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iget-object v2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    iget v6, v5, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->a:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    iget v6, v5, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->a:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    iget v4, v2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->a:I

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v4, v2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->b:I

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v4, v2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->c:J

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget v4, v2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->d:I

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, v2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/lib/metrics/os/OS09;->stringOutPadToWord(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/os/OS09;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    invoke-virtual {v1, p1}, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->a(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/os/OS09;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    invoke-virtual {v1, p1}, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->a(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
