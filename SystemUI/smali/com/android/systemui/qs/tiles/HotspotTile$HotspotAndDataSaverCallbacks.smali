.class final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotspotAndDataSaverCallbacks"
.end annotation


# instance fields
.field mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method


# virtual methods
.method public onDataSaverChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDataSaverChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onHotspotChanged(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onHotspotChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " devices ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput p2, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$400(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->fireScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onHotspotPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onHotspotPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$700()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$800(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->fireScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateConnectedDevices(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateConnectedDevices ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    :cond_0
    return-void
.end method
