.class public Lcom/att/iqi/lib/metrics/mm/MM07;
.super Lcom/att/iqi/lib/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/mm/MM07;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SDP_MEDIA_APPLICATION:B = 0x4t

.field public static final IQ_SDP_MEDIA_AUDIO:B = 0x1t

.field public static final IQ_SDP_MEDIA_CONTROL:B = 0x6t

.field public static final IQ_SDP_MEDIA_DATA:B = 0x7t

.field public static final IQ_SDP_MEDIA_MESSAGE:B = 0x5t

.field public static final IQ_SDP_MEDIA_TEXT:B = 0x3t

.field public static final IQ_SDP_MEDIA_UNKNOWN:B = 0x0t

.field public static final IQ_SDP_MEDIA_VIDEO:B = 0x2t


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "MM07"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM07;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM07$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM07;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM07;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    new-instance v3, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BBLcom/att/iqi/lib/metrics/mm/MM07$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v3, v4}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)I

    iget-object v4, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDrop(S)I
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDuration(S)I
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFormat(S)B
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLate(S)I
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMediaType(S)B
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRcvd(S)I
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {v1, p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setRtpStats(SBBIIII)V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    if-nez v0, :cond_0

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BBLcom/att/iqi/lib/metrics/mm/MM07$1;)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p4, p5, p6, p7}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->set(IIII)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->a(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->b(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->c(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->d(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->e(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->f(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
