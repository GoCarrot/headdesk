.class final Lio/teak/sdk/d/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lio/teak/sdk/d/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/teak/sdk/d/b$1;->b:Lio/teak/sdk/d/b;

    iput-object p2, p0, Lio/teak/sdk/d/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 3
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v1, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_1
    :goto_1
    return-void

    .line 87
    :sswitch_0
    const-string v2, "PushNotificationEvent.Cleared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "PushNotificationEvent.Interaction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "NotificationDisplayEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :pswitch_0
    check-cast p1, Lio/teak/sdk/c/j;

    iget-object v0, p1, Lio/teak/sdk/c/j;->b:Landroid/content/Intent;

    .line 91
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lio/teak/sdk/d/b$1;->b:Lio/teak/sdk/d/b;

    const-string v2, "platformId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lio/teak/sdk/d/b;->a(I)V

    goto :goto_1

    .line 97
    :pswitch_1
    check-cast p1, Lio/teak/sdk/c/f;

    .line 98
    iget-object v0, p0, Lio/teak/sdk/d/b$1;->b:Lio/teak/sdk/d/b;

    iget-object v1, p1, Lio/teak/sdk/c/f;->b:Lio/teak/sdk/TeakNotification;

    iget-object v2, p1, Lio/teak/sdk/c/f;->c:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/b;->a(Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V

    goto :goto_1

    .line 87
    :sswitch_data_0
    .sparse-switch
        -0x7d7a1e27 -> :sswitch_1
        -0x169c8d0d -> :sswitch_0
        0x32a88ba3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
