.class public Lcom/att/iqi/lib/metrics/rp/RP02;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/rp/RP02;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_RTP_BADSSRC:B = 0x4t

.field public static final IQ_RTP_DROP:B = 0x2t

.field public static final IQ_RTP_LATE:B = 0x1t

.field public static final IQ_RTP_OK:B = 0x0t

.field public static final IQ_RTP_RESETSEQ:B = 0x3t


# instance fields
.field private a:S

.field private b:S

.field private c:B

.field private d:B

.field private e:B

.field private f:S

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "RP02"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP02;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/rp/RP02$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/rp/RP02$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/rp/RP02;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/rp/RP02;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->a:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->b:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->c:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->d:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->e:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->f:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->h:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getByteCount()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->a:S

    return v0
.end method

.method public getDstPort()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->b:S

    return v0
.end method

.method public getFlags()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->d:B

    return v0
.end method

.method public getPayloadType()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->e:B

    return v0
.end method

.method public getPktStatus()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->c:B

    return v0
.end method

.method public getSequenceNum()S
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->f:S

    return v0
.end method

.method public getSourceId()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->h:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->g:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->a:S

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->b:S

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->c:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->d:B

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->e:B

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->f:S

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->g:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->h:I

    return-void
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->a:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->b:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->d:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->e:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->f:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->g:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->h:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setByteCount(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->a:S

    return-object p0
.end method

.method public setDstPort(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->b:S

    return-object p0
.end method

.method public setFlags(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->d:B

    return-object p0
.end method

.method public setPayloadType(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->e:B

    return-object p0
.end method

.method public setPktStatus(B)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->c:B

    return-object p0
.end method

.method public setSequenceNum(S)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->f:S

    return-object p0
.end method

.method public setSourceId(I)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->h:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/att/iqi/lib/metrics/rp/RP02;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->g:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->a:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->b:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->c:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->d:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->e:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->f:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/rp/RP02;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
