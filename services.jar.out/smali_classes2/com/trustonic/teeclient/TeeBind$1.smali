.class synthetic Lcom/trustonic/teeclient/TeeBind$1;
.super Ljava/lang/Object;
.source "TeeBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustonic/teeclient/TeeBind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$trustonic$teeclient$BindSession$BindReturnCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->values()[Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/trustonic/teeclient/TeeBind$1;->$SwitchMap$com$trustonic$teeclient$BindSession$BindReturnCode:[I

    :try_start_0
    sget-object v0, Lcom/trustonic/teeclient/TeeBind$1;->$SwitchMap$com$trustonic$teeclient$BindSession$BindReturnCode:[I

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OK:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    invoke-virtual {v1}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/trustonic/teeclient/TeeBind$1;->$SwitchMap$com$trustonic$teeclient$BindSession$BindReturnCode:[I

    sget-object v1, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->OVERLOAD:Lcom/trustonic/teeclient/BindSession$BindReturnCode;

    invoke-virtual {v1}, Lcom/trustonic/teeclient/BindSession$BindReturnCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
