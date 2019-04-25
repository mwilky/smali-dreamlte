.class Lcom/trustonic/teeclient/TeeBind;
.super Ljava/lang/Object;
.source "TeeBind.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static cont_:Landroid/content/Context;

.field private static session_list_:Lcom/trustonic/teeclient/BindSessionList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/trustonic/teeclient/TeeBind;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_JAVA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trustonic/teeclient/TeeBind;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/trustonic/teeclient/BindSessionList;

    invoke-direct {v0}, Lcom/trustonic/teeclient/BindSessionList;-><init>()V

    sput-object v0, Lcom/trustonic/teeclient/TeeBind;->session_list_:Lcom/trustonic/teeclient/BindSessionList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/TeeBind;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind target : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/trustonic/teeclient/TeeBind;->session_list_:Lcom/trustonic/teeclient/BindSessionList;

    sget-object v1, Lcom/trustonic/teeclient/TeeBind;->cont_:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/trustonic/teeclient/BindSessionList;->bind(Landroid/content/Context;Ljava/lang/String;)Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-result-object v0

    sget-object v1, Lcom/trustonic/teeclient/TeeBind$1;->$SwitchMap$com$trustonic$teeclient$BindSession$BindReturnCode:[I

    invoke-virtual {v0}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x2

    return v1

    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static broadcastIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/TeeBind;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/trustonic/teeclient/TeeBind;->cont_:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static registerContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/trustonic/teeclient/TeeBind;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/trustonic/teeclient/TeeBind;->cont_:Landroid/content/Context;

    return-void
.end method

.method public static unbind(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/TeeBind;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind target : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/trustonic/teeclient/TeeBind;->session_list_:Lcom/trustonic/teeclient/BindSessionList;

    invoke-virtual {v0, p0}, Lcom/trustonic/teeclient/BindSessionList;->unbind(Ljava/lang/String;)Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-result-object v0

    sget-object v1, Lcom/trustonic/teeclient/TeeBind$1;->$SwitchMap$com$trustonic$teeclient$BindSession$BindReturnCode:[I

    invoke-virtual {v0}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x2

    return v1

    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    const/4 v1, 0x0

    return v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
