.class Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;
.super Ljava/lang/Object;
.source "IExtHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;->this$0:Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/DiskStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/health/V2_0/DiskStats;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
