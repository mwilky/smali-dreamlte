.class public Lcom/att/iqi/lib/metrics/wl/WL14;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final ASSOC_MASK:B = 0x20t

.field public static final ASSOC_VALUE_ASSOCIATION:B = 0x0t

.field public static final ASSOC_VALUE_REASSOCIATION:B = 0x20t

.field public static final AUTH_MASK:B = 0x40t

.field public static final AUTH_VALUE_AUTHENTICATION:B = 0x0t

.field public static final AUTH_VALUE_REAUTHENTICATION:B = 0x40t

.field public static final CHANNEL_VALUE_UNKNOWN:B = 0x0t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/wl/WL14;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static final MAC_ADDR_SIZE:I = 0x6

.field public static final MODE_MASK:B = 0x10t

.field public static final MODE_VALUE_ADHOC:B = 0x0t

.field public static final MODE_VALUE_INFRASTRUCTURE:B = 0x10t


# instance fields
.field private a:[B

.field private b:B

.field private c:B

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "WL14"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/wl/WL14;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/wl/WL14$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/wl/WL14$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/wl/WL14;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->c:B

    :cond_1
    return-void
.end method

.method public static frequencyToChannel(I)B
    .locals 11

    const/16 v0, 0x85

    const/16 v1, 0x86

    const/16 v2, 0x89

    const/16 v3, 0x8a

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/16 v9, 0x84

    const/16 v10, 0x88

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_0
    const/16 v0, 0xa5

    goto/16 :goto_0

    :sswitch_1
    const/16 v0, 0xa1

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x9d

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x99

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x95

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x8c

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x80

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x7c

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x78

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x74

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x70

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x6c

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x68

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x64

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_1b
    const/16 v0, 0xc4

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0xc0

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0xbd

    goto/16 :goto_0

    :sswitch_1e
    const/16 v0, 0xbc

    goto/16 :goto_0

    :sswitch_1f
    const/16 v0, 0xbb

    goto :goto_0

    :sswitch_20
    const/16 v0, 0xb9

    goto :goto_0

    :sswitch_21
    const/16 v0, 0xb8

    goto :goto_0

    :sswitch_22
    const/16 v0, 0xb7

    goto :goto_0

    :sswitch_23
    move v0, v3

    goto :goto_0

    :sswitch_24
    move v0, v2

    goto :goto_0

    :sswitch_25
    move v0, v10

    goto :goto_0

    :sswitch_26
    const/16 v0, 0x87

    goto :goto_0

    :sswitch_27
    move v0, v1

    goto :goto_0

    :sswitch_28
    move v0, v9

    goto :goto_0

    :sswitch_29
    const/16 v0, 0x83

    goto :goto_0

    :sswitch_2a
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_2b
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_2c
    move v0, v8

    goto :goto_0

    :sswitch_2d
    move v0, v7

    goto :goto_0

    :sswitch_2e
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_2f
    move v0, v6

    goto :goto_0

    :sswitch_30
    move v0, v5

    goto :goto_0

    :sswitch_31
    move v0, v4

    goto :goto_0

    :sswitch_32
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_33
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_34
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_35
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_36
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_37
    const/4 v0, 0x1

    :goto_0
    :sswitch_38
    const/16 p0, 0xff

    and-int/2addr p0, v0

    int-to-byte p0, p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_37
        0x971 -> :sswitch_36
        0x976 -> :sswitch_35
        0x97b -> :sswitch_34
        0x980 -> :sswitch_33
        0x985 -> :sswitch_32
        0x98a -> :sswitch_31
        0x98f -> :sswitch_30
        0x994 -> :sswitch_2f
        0x999 -> :sswitch_2e
        0x99e -> :sswitch_2d
        0x9a3 -> :sswitch_2c
        0x9a8 -> :sswitch_2b
        0x9b4 -> :sswitch_2a
        0xe49 -> :sswitch_29
        0xe4c -> :sswitch_28
        0xe4e -> :sswitch_28
        0xe51 -> :sswitch_38
        0xe53 -> :sswitch_38
        0xe56 -> :sswitch_27
        0xe58 -> :sswitch_27
        0xe5d -> :sswitch_26
        0xe60 -> :sswitch_25
        0xe62 -> :sswitch_25
        0xe65 -> :sswitch_24
        0xe67 -> :sswitch_24
        0xe69 -> :sswitch_23
        0xe6a -> :sswitch_23
        0x1333 -> :sswitch_22
        0x1338 -> :sswitch_21
        0x133d -> :sswitch_20
        0x1347 -> :sswitch_1f
        0x134c -> :sswitch_1e
        0x1351 -> :sswitch_1d
        0x1360 -> :sswitch_1c
        0x1374 -> :sswitch_1b
        0x13ab -> :sswitch_31
        0x13b0 -> :sswitch_30
        0x13b5 -> :sswitch_2f
        0x13bf -> :sswitch_2d
        0x13c4 -> :sswitch_2c
        0x13d8 -> :sswitch_1a
        0x1432 -> :sswitch_19
        0x143c -> :sswitch_18
        0x1446 -> :sswitch_17
        0x1450 -> :sswitch_16
        0x145a -> :sswitch_15
        0x1464 -> :sswitch_14
        0x146e -> :sswitch_13
        0x1478 -> :sswitch_12
        0x148c -> :sswitch_11
        0x14a0 -> :sswitch_10
        0x14b4 -> :sswitch_f
        0x14c8 -> :sswitch_e
        0x157c -> :sswitch_d
        0x1590 -> :sswitch_c
        0x15a4 -> :sswitch_b
        0x15b8 -> :sswitch_a
        0x15cc -> :sswitch_9
        0x15e0 -> :sswitch_8
        0x15f4 -> :sswitch_7
        0x1608 -> :sswitch_6
        0x161c -> :sswitch_28
        0x1630 -> :sswitch_25
        0x1644 -> :sswitch_5
        0x1671 -> :sswitch_4
        0x1685 -> :sswitch_3
        0x1699 -> :sswitch_2
        0x16ad -> :sswitch_1
        0x16c1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->d:Ljava/lang/String;

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->c:B

    return-void
.end method

.method public getChannel()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->c:B

    return v0
.end method

.method public getPeerMacAddr()[B
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/wl/WL14;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public setAssociation()V
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    return-void
.end method

.method public setAuthentication()V
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    return-void
.end method

.method public setChannel(B)V
    .locals 0

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->c:B

    return-void
.end method

.method public setModeAdhoc()V
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    return-void
.end method

.method public setModeInfrastructure()V
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

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

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad MAC address"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReassociation()V
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    return-void
.end method

.method public setReauthentication()V
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    array-length p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->a:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->b:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/wl/WL14;->c:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
