.class public Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractSerialNumberPreferenceController.java"


# static fields
.field static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mSerialNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/deviceinfo/AbstractSerialNumberPreferenceController;->mSerialNumber:Ljava/lang/String;

    return-void
.end method
