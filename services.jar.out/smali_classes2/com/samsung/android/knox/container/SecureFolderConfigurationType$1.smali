.class Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;
.super Ljava/lang/Object;
.source "SecureFolderConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/container/SecureFolderConfigurationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
    .locals 2

    const-string v0, "SecureFolderConfigurationType"

    const-string v1, "SecureFolderConfigurationType[] array to be created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, p1, [Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;->newArray(I)[Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    move-result-object p1

    return-object p1
.end method
