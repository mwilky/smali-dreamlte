.class public Lcom/android/systemui/lockstar/component/PluginLockServiceBox;
.super Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.source "PluginLockServiceBox.java"


# instance fields
.field private mServiceBoxExpandable:Z

.field private mServiceBoxTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxExpandable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockServiceBox"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->getPaddingTop()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->getExpandable()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxExpandable:Z

    :cond_2
    return-void
.end method

.method public getServiceBoxTopPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    return v0
.end method

.method public reset(Z)V
    .locals 2

    const-string v0, "PluginLockServiceBox"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->mServiceBoxExpandable:Z

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    return-void
.end method