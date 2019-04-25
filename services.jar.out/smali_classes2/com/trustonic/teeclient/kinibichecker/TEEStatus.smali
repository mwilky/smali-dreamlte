.class Lcom/trustonic/teeclient/kinibichecker/TEEStatus;
.super Ljava/lang/Object;
.source "KinibiChecker.java"


# instance fields
.field cause:Ljava/lang/String;

.field teeError:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/trustonic/teeclient/kinibichecker/TEEError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/trustonic/teeclient/kinibichecker/TEEError;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->teeError:Ljava/util/EnumSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->cause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setTEEStatus(Lcom/trustonic/teeclient/kinibichecker/TEEError;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->teeError:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/trustonic/teeclient/kinibichecker/TEEStatus;->cause:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    return-void
.end method
