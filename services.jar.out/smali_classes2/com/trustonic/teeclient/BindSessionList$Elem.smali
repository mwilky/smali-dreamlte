.class final Lcom/trustonic/teeclient/BindSessionList$Elem;
.super Ljava/lang/Object;
.source "TeeBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustonic/teeclient/BindSessionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Elem"
.end annotation


# instance fields
.field private final index_:I

.field private final session_:Lcom/trustonic/teeclient/BindSession;


# direct methods
.method public constructor <init>(Lcom/trustonic/teeclient/BindSession;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trustonic/teeclient/BindSessionList$Elem;->session_:Lcom/trustonic/teeclient/BindSession;

    iput p2, p0, Lcom/trustonic/teeclient/BindSessionList$Elem;->index_:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/trustonic/teeclient/BindSessionList$Elem;->index_:I

    return v0
.end method

.method public getSession()Lcom/trustonic/teeclient/BindSession;
    .locals 1

    iget-object v0, p0, Lcom/trustonic/teeclient/BindSessionList$Elem;->session_:Lcom/trustonic/teeclient/BindSession;

    return-object v0
.end method
