.class public final synthetic Lcom/android/server/-$$Lambda$BluetoothManagerService$7xVgbWYFxmtTxrTc6v5OSFBEabc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorPropertyCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BluetoothManagerService$7xVgbWYFxmtTxrTc6v5OSFBEabc;->f$0:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BluetoothManagerService$7xVgbWYFxmtTxrTc6v5OSFBEabc;->f$0:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/BluetoothManagerService;->lambda$getPropertyService$1(Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V

    return-void
.end method
