.class public Lcom/upsight/android/unity/UnityBridge;
.super Ljava/lang/Object;
.source "UnityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/unity/UnityBridge$Listener;
    }
.end annotation


# static fields
.field private static final MANAGER_NAME:Ljava/lang/String; = "UpsightManager"

.field private static final TAG:Ljava/lang/String; = "Upsight"

.field private static listener:Lcom/upsight/android/unity/UnityBridge$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnitySendMessage(Ljava/lang/String;)V
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parameter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    :try_start_0
    sget-object v1, Lcom/upsight/android/unity/UnityBridge;->listener:Lcom/upsight/android/unity/UnityBridge$Listener;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/upsight/android/unity/UnityBridge;->listener:Lcom/upsight/android/unity/UnityBridge$Listener;

    invoke-interface {v1, p0, p1}, Lcom/upsight/android/unity/UnityBridge$Listener;->sentMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    const-string v1, "UpsightManager"

    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "parameter":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnityPlayer.UnitySendMessage failed. The NDK library is likely not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clearListener()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/upsight/android/unity/UnityBridge;->listener:Lcom/upsight/android/unity/UnityBridge$Listener;

    .line 30
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/upsight/android/unity/UnityBridge$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/unity/UnityBridge$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static setListener(Lcom/upsight/android/unity/UnityBridge$Listener;)V
    .locals 0
    .param p0, "l"    # Lcom/upsight/android/unity/UnityBridge$Listener;

    .prologue
    .line 25
    sput-object p0, Lcom/upsight/android/unity/UnityBridge;->listener:Lcom/upsight/android/unity/UnityBridge$Listener;

    .line 26
    return-void
.end method
