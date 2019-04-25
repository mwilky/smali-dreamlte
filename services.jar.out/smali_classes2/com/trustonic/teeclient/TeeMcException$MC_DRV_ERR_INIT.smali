.class public Lcom/trustonic/teeclient/TeeMcException$MC_DRV_ERR_INIT;
.super Lcom/trustonic/teeclient/TeeException;
.source "TeeMcException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustonic/teeclient/TeeMcException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MC_DRV_ERR_INIT"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/trustonic/teeclient/TeeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
