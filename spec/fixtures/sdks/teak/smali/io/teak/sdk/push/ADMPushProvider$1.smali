.class final Lio/teak/sdk/push/ADMPushProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/push/ADMPushProvider;->requestPushKey(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/push/ADMPushProvider;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/ADMPushProvider;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lio/teak/sdk/push/ADMPushProvider$1;->a:Lio/teak/sdk/push/ADMPushProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider$1;->a:Lio/teak/sdk/push/ADMPushProvider;

    invoke-static {v0}, Lio/teak/sdk/push/ADMPushProvider;->access$000(Lio/teak/sdk/push/ADMPushProvider;)Lcom/amazon/device/messaging/ADM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider$1;->a:Lio/teak/sdk/push/ADMPushProvider;

    invoke-static {v0}, Lio/teak/sdk/push/ADMPushProvider;->access$000(Lio/teak/sdk/push/ADMPushProvider;)Lcom/amazon/device/messaging/ADM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider$1;->a:Lio/teak/sdk/push/ADMPushProvider;

    invoke-static {v0}, Lio/teak/sdk/push/ADMPushProvider;->access$000(Lio/teak/sdk/push/ADMPushProvider;)Lcom/amazon/device/messaging/ADM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lio/teak/sdk/push/ADMPushProvider$1;->a:Lio/teak/sdk/push/ADMPushProvider;

    invoke-static {v1, v0}, Lio/teak/sdk/push/ADMPushProvider;->access$100(Lio/teak/sdk/push/ADMPushProvider;Ljava/lang/String;)V

    goto :goto_0
.end method
