.class public Lcom/samsung/android/knox/application/UsbDeviceConfig;
.super Ljava/lang/Object;
.source "UsbDeviceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public productId:I

.field public vendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/UsbDeviceConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/UsbDeviceConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    iput p2, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/UsbDeviceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/application/UsbDeviceConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/UsbDeviceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v1, v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    if-lez v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v1, v1, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v2, v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;

    iget v2, v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->productId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
