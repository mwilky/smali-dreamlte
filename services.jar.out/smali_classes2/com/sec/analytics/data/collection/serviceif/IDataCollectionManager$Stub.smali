.class public abstract Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;
.super Landroid/os/Binder;
.source "IDataCollectionManager.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.analytics.data.collection.serviceif.IDataCollectionManager"

.field static final TRANSACTION_disableLogCollection:I = 0x2

.field static final TRANSACTION_enableLogCollection:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.analytics.data.collection.serviceif.IDataCollectionManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.sec.analytics.data.collection.serviceif.IDataCollectionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.analytics.data.collection.serviceif.IDataCollectionManager"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v3, v4, v1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;->disableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;->enableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
