.class public Lcom/att/iqi/lib/metrics/wl/WL19;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/wl/WL19;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static final MAC_ADDR_SIZE:I = 0x6


# instance fields
.field private a:[B

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "WL19"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/wl/WL19;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/wl/WL19$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/wl/WL19$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/wl/WL19;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->c:J

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->e:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    iput-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->c:J

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->e:Ljava/lang/String;

    return-void
.end method

.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->c:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    return-wide v0
.end method

.method public getPeerMacAddr()[B
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/wl/WL19;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/wl/WL19;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setBytesRcvd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->c:J

    return-void
.end method

.method public setBytesSent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    return-void
.end method

.method public setPeerMacAddr([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad MAC address"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->e:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    array-length p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->a:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL19;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
