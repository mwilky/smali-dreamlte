.class public final synthetic Lcom/android/server/-$$Lambda$BluetoothManagerService$-oZKjd2jrowubGXH4Bn_6Aua1Jk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorFileInfoCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BluetoothManagerService$-oZKjd2jrowubGXH4Bn_6Aua1Jk;->f$0:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BluetoothManagerService$-oZKjd2jrowubGXH4Bn_6Aua1Jk;->f$0:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/BluetoothManagerService;->lambda$getFileService$0(Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V

    return-void
.end method
