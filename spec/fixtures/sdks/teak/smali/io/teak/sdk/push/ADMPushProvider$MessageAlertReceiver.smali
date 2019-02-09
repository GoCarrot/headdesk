.class public Lio/teak/sdk/push/ADMPushProvider$MessageAlertReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/push/ADMPushProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageAlertReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lio/teak/sdk/push/ADMPushProvider;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    .line 59
    return-void
.end method
