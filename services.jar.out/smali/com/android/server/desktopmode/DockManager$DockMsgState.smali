.class public Lcom/android/server/desktopmode/DockManager$DockMsgState;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockMsgState"
.end annotation


# instance fields
.field private mMsgState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private msgStateToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "MSG_DOCK_FAST_CHARGING_EXTRA_ERROR_UPDATED"

    return-object v0

    :sswitch_1
    const-string v0, "MSG_DOCK_FAST_CHARGING_EXTRA_UNDEFINED"

    return-object v0

    :sswitch_2
    const-string v0, "MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED"

    return-object v0

    :sswitch_3
    const-string v0, "MSG_DOCK_FAST_CHARGING_VERSION_UNDEFINED"

    return-object v0

    :sswitch_4
    const-string v0, "MSG_DOCK_FAST_CHARGING_ERROR"

    return-object v0

    :sswitch_5
    const-string v0, "MSG_DOCK_FAST_CHARGING_ERROR_UNDEFINED"

    return-object v0

    :sswitch_6
    const-string v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE"

    return-object v0

    :sswitch_7
    const-string v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO"

    return-object v0

    :sswitch_8
    const-string v0, "MSG_DOCK_FAST_CHARGING_RESPONSE_UNDEFINED"

    return-object v0

    :sswitch_9
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY"

    return-object v0

    :sswitch_a
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE"

    return-object v0

    :sswitch_b
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO"

    return-object v0

    :sswitch_c
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_CREATE"

    return-object v0

    :sswitch_d
    const-string v0, "MSG_DOCK_FAST_CHARGING_REQUEST_UNDEFINED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_d
        0xc9 -> :sswitch_c
        0xca -> :sswitch_b
        0xcb -> :sswitch_a
        0xcc -> :sswitch_9
        0xd2 -> :sswitch_8
        0xd3 -> :sswitch_7
        0xd4 -> :sswitch_6
        0xdc -> :sswitch_5
        0xdd -> :sswitch_4
        0xe6 -> :sswitch_3
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_1
        0xf1 -> :sswitch_0
    .end sparse-switch
.end method

.method private msgTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "MSG_TYPE_EXTRA"

    return-object v0

    :pswitch_1
    const-string v0, "MSG_TYPE_VERSION"

    return-object v0

    :pswitch_2
    const-string v0, "MSG_TYPE_ERROR"

    return-object v0

    :pswitch_3
    const-string v0, "MSG_TYPE_RESPONSE"

    return-object v0

    :pswitch_4
    const-string v0, "MSG_TYPE_REQUEST"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setLast(IILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
