.class Lcom/trustonic/teeclient/BindSessionList;
.super Ljava/lang/Object;
.source "TeeBind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trustonic/teeclient/BindSessionList$Elem;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static session_list_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/trustonic/teeclient/BindSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/trustonic/teeclient/TeeClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_JAVA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/trustonic/teeclient/BindSessionList;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Ljava/lang/String;)Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    .locals 6

    invoke-virtual {p0, p2}, Lcom/trustonic/teeclient/BindSessionList;->getElem(Ljava/lang/String;)Lcom/trustonic/teeclient/BindSessionList$Elem;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/trustonic/teeclient/BindSession;

    invoke-direct {v1, p1, p2}, Lcom/trustonic/teeclient/BindSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/trustonic/teeclient/BindSessionList$Elem;->getSession()Lcom/trustonic/teeclient/BindSession;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/trustonic/teeclient/BindSession;->bind()Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-result-object v2

    sget-object v3, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v3, Lcom/trustonic/teeclient/BindSessionList;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getElem(Ljava/lang/String;)Lcom/trustonic/teeclient/BindSessionList$Elem;
    .locals 4

    sget-object v0, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trustonic/teeclient/BindSession;

    invoke-virtual {v1}, Lcom/trustonic/teeclient/BindSession;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/trustonic/teeclient/BindSessionList$Elem;

    sget-object v3, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trustonic/teeclient/BindSession;

    invoke-direct {v2, v3, v0}, Lcom/trustonic/teeclient/BindSessionList$Elem;-><init>(Lcom/trustonic/teeclient/BindSession;I)V

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    sget-object v0, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    sget-object v1, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Session list : \n"

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "Session list empty"

    :cond_1
    return-object v0
.end method

.method public unbind(Ljava/lang/String;)Lcom/trustonic/teeclient/BindSession$BindReturnCode;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/trustonic/teeclient/BindSessionList;->getElem(Ljava/lang/String;)Lcom/trustonic/teeclient/BindSessionList$Elem;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/trustonic/teeclient/BindSessionList;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t unbind : session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->FAILURE:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/trustonic/teeclient/BindSessionList$Elem;->getSession()Lcom/trustonic/teeclient/BindSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustonic/teeclient/BindSession;->unbind()Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-result-object v1

    sget-object v2, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/trustonic/teeclient/BindSessionList;->session_list_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/trustonic/teeclient/BindSessionList$Elem;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lcom/trustonic/teeclient/BindSessionList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session removed from list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/trustonic/teeclient/BindSessionList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
