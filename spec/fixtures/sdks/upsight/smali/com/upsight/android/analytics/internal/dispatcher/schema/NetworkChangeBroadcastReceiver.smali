.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/NetworkChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/upsight/android/Upsight;->isSdkEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    .line 29
    .local v1, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    .line 31
    .local v0, "bus":Lcom/squareup/otto/Bus;
    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/schema/NetworkChangeEvent;

    .line 32
    invoke-static {p1}, Lcom/upsight/android/internal/util/NetworkHelper;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {p1}, Lcom/upsight/android/internal/util/NetworkHelper;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/schema/NetworkChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
