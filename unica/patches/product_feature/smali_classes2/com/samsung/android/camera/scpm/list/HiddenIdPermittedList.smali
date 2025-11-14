.class public final Lcom/samsung/android/camera/scpm/list/HiddenIdPermittedList;
.super Lcom/samsung/android/camera/scpm/ScpmList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/samsung/android/camera/scpm/ScpmList;-><init>()V

    sget-object v1, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->HIDDEN_ID_PERMITTED:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    const-string v1, "2024062500"

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    const-string/jumbo v1, "hiddenidpermittedlist-3a1e"

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "packageName"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    const-string/jumbo v1, "Y29tLmZhY3RvcnkubW1pZ3JvdXA="

    const-string v2, "1"

    const-string v3, "0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "Y29tLnZhbC5oYXJkd2FyZQ=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "Y29tLmxvbmdjaGVlci5taWR0ZXN0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "Y29tLnNhbXN1bmc="

    const-string v2, "2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "Y29tLnNlYw=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "Y2xpZW50LnBpZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "Y29tLmRpYW1vbmQuYXBw"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "Y29tLndhbG1hcnQuZGlhbW9uZC5hcHA="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "aWUuZ2FyZGEuYW5kcm9pZC5hbnBy"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "Y29tLnF1cmFtc29mdC50YWN0aWNzY2FtZXJh"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "Y29tLnNyYnIuYXBwLnNlbnNvcnByb3h5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "Y29tLnByaXNtLmxpdmU="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v1, "Y29tLnNzLmFuZHJvaWQudWdjLmF3ZW1l"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v1, "Y29tLnNzLmFuZHJvaWQudWdjLnRyaWxs"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v1, "Y29tLnpoaWxpYW9hcHAubXVzaWNhbGx5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v1, "Y29tLmNhbXBtb2JpbGUuc25vdw=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v1, "Y29tLmxpbmVjb3JwLmI2MTIuYW5kcm9pZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v1, "Y29tLmxpbmVjb3JwLmZvb2RjYW0uYW5kcm9pZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v1, "Y29tLmxpbmVjb3JwLmZvb2RjYW1jbi5hbmRyb2lk"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v1, "Y29tLnNub3djb3JwLnNvZGEuYW5kcm9pZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v1, "Y29tLnlpcnVpa2Uuc29kYWNuLmFuZHJvaWQ="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v25

    filled-new-array/range {v4 .. v25}, [[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/scpm/ScpmList;->setPackageList([[Ljava/lang/String;)V

    return-void
.end method
