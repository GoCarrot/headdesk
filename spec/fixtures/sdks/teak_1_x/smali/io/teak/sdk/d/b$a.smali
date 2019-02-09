.class final Lio/teak/sdk/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/Notification;

.field final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/b;Landroid/app/Notification;Lio/teak/sdk/TeakNotification;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    .line 57
    iget-object v0, p3, Lio/teak/sdk/TeakNotification;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    .line 58
    iget-object v0, p0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    const-string v1, "platformId"

    iget v2, p3, Lio/teak/sdk/TeakNotification;->platformId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    return-void
.end method
