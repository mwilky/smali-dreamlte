.class public Lcom/samsung/android/knox/container/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Lcom/samsung/android/knox/container/EnterpriseContainerConstants;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private admin:I

.field private containerType:I

.field private email:Ljava/lang/String;

.field private id:I

.field private lockType:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContainerAdmin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    return v0
.end method

.method public getContainerEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    return v0
.end method

.method public getContainerLockType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    return v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return v0
.end method

.method public setContainerAdmin(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    return-void
.end method

.method public setContainerEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-void
.end method

.method public setContainerId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    return-void
.end method

.method public setContainerLockType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    return-void
.end method

.method public setContainerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setContainerType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
