.class Lcom/trustonic/teeclient/BindSession;
.super Ljava/lang/Object;
.source "TeeBind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private connection_:Landroid/content/ServiceConnection;

.field private cont_:Landroid/content/Context;

.field private effectively_binded_:Z

.field private nb_bind_:I

.field private target_intent_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/trustonic/teeclient/BindSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trustonic/teeclient/BindSession;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trustonic/teeclient/BindSession;->effectively_binded_:Z

    iput v0, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    new-instance v0, Lcom/trustonic/teeclient/BindSession$1;

    invoke-direct {v0, p0}, Lcom/trustonic/teeclient/BindSession$1;-><init>(Lcom/trustonic/teeclient/BindSession;)V

    iput-object v0, p0, Lcom/trustonic/teeclient/BindSession;->connection_:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    iput-object p1, p0, Lcom/trustonic/teeclient/BindSession;->cont_:Landroid/content/Context;

    return-void
.end method

.method private localLogD(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/BindSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private localLogE(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/BindSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private localLogI(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/BindSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private localLogW(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/BindSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bind()Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    .locals 7

    sget-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    :try_start_0
    iget v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/trustonic/teeclient/BindSession;->cont_:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v2, "startService failed"

    invoke-direct {p0, v2}, Lcom/trustonic/teeclient/BindSession;->localLogD(Ljava/lang/String;)V

    sget-object v2, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/trustonic/teeclient/BindSession;->cont_:Landroid/content/Context;

    iget-object v6, p0, Lcom/trustonic/teeclient/BindSession;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v1, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v2, "bindService failed"

    invoke-direct {p0, v2}, Lcom/trustonic/teeclient/BindSession;->localLogD(Ljava/lang/String;)V

    sget-object v2, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v2

    :cond_1
    iput-boolean v2, p0, Lcom/trustonic/teeclient/BindSession;->effectively_binded_:Z

    sget-object v6, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-object v0, v6

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "nbBind increased"

    invoke-direct {p0, v1}, Lcom/trustonic/teeclient/BindSession;->localLogI(Ljava/lang/String;)V

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OVERLOAD:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-object v0, v1

    :goto_0
    iget v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "bindService failed"

    invoke-direct {p0, v2}, Lcom/trustonic/teeclient/BindSession;->localLogD(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    sget-object v2, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v2
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    return-object v0
.end method

.method public getNbBind()I
    .locals 1

    iget v0, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    return v0
.end method

.method isBinded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/trustonic/teeclient/BindSession;->effectively_binded_:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session [ intent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustonic/teeclient/BindSession;->target_intent_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), isBinded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/trustonic/teeclient/BindSession;->effectively_binded_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), nbBind("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    .locals 3

    sget-object v0, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    :try_start_0
    iget v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/trustonic/teeclient/BindSession;->cont_:Landroid/content/Context;

    iget-object v2, p0, Lcom/trustonic/teeclient/BindSession;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/trustonic/teeclient/BindSession;->effectively_binded_:Z

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "nbBind decreased"

    invoke-direct {p0, v1}, Lcom/trustonic/teeclient/BindSession;->localLogI(Ljava/lang/String;)V

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OVERLOAD:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-object v0, v1

    :goto_0
    iget v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/trustonic/teeclient/BindSession;->nb_bind_:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "unbindService failed"

    invoke-direct {p0, v2}, Lcom/trustonic/teeclient/BindSession;->localLogE(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    sget-object v2, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v2
.end method
