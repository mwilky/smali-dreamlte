.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;
.super Ljava/lang/Object;
.source "PluginNavigationBar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.navigationbar.PLUGIN"
    version = 0x7d1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.navigationbar.PLUGIN"

.field public static final MAJOR_VERSION:I = 0x2

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x7d1


# virtual methods
.method public abstract connect(Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V
.end method

.method public abstract disconnect()V
.end method
