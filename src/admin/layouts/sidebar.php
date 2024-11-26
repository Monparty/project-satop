<style>                
    .sidebar {
        height: 100%;
        width: 250px;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
        background-color: #F7F9FC;
        transition: 0.5s;

        & img {
            margin-left: 5px;
        }
    }

    .boxLogo {
        display: flex; 
        align-items: center; 
        gap: 10px; 
        height: 60px; 
        padding: 0 10px;
    }

    .boxSidebarMenu {
        height: calc(100% - 60px);
        overflow-y: auto;
    }

    .sidebarMenu {
        display: grid;
        padding: 0 10px;
        gap: 10px;
        margin-bottom: 20px;

        & a {
            display: flex;
            align-items: center;
            padding: 5px;
            border-radius: 15px;
            font-size: 16px;
            
            & i {
                font-size: 22px;
                margin-right: 10px;
            }
            
            &:hover {
                background-color: var(--lightBlue);
                border-radius: 15px;
            }
        }
    }

    .main__sidebar {
        position: fixed;
        left: 10px;
        top: 10px;
        background-color: var(--blue);
        padding: 8px;
        width: fit-content;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 15px;
        cursor: pointer;
        z-index: 2;
        
        & i {
            font-size: 30px;
            color: var(--white);
        }
    }

    details {
        border-radius: 15px;

        & summary {
            padding: 5px 38px;
        }

        & .summaryContent {
            display: grid;
            gap: 5px;
        }

        & summary:before {
            content: '';
            border-width: .4rem;
            border-style: solid;
            border-color: transparent transparent transparent var(--blue);
            position: absolute;
            top: 12px;
            left: 1rem;
            transform: rotate(0);
            transform-origin: .2rem 50%;
            transition: .25s transform ease;
        }
    }

    @media screen and (max-width: 576px) {
        .main__sidebar {
            top: 35%;
        }
    }

    .active  {
        background-color: var(--sky);
        border-radius: 15px;
        color: var(--white);
        font-weight: bold;
    }

    .boxSidebarMenu::-webkit-scrollbar-track {
        background: #F7F9FC; 
    }
    
</style>
<div id="mySidebar" class="sidebar">
    <div class="boxLogo">
        <img src="../../../../public/imgs/logosatop.png" height="40" alt="">
        <h3>satop travelers</h3>
    </div>
    <div class="boxSidebarMenu">
        <div class="sidebarMenu">
            <a class="sideItem" href="../../pages/dashboard/dashboard"><i class='bx bx-home'></i>หน้าแรก</a>
            <a class="sideItem" href="../../pages/overview/overview"><i class='bx bx-bar-chart-square'></i>ภาพรวมห้องพัก</a>
            <a class="sideItem" href="../../pages/room/roomList"><i class='bx bx-hotel'></i>จัดการห้องพัก</a>
            <a class="sideItem" href="../../pages/bookings/bookingList"><i class='bx bx-book-bookmark'></i>ข้อมูลการจองห้องพัก</a>
            <a class="sideItem" href="../../pages/checkInCheckOut/checkInCheckOutList"><i class='bx bx-calendar-check'></i>จัดการเช็คอิน เช็คเอาท์</a>
            <!-- <a class="sideItem" href="../../pages/meetRoom/meetRoomList.php"><i class='bx bxs-building-house'></i>จัดการห้องประชุม</a> -->
            <!-- <a class="sideItem" href="../../pages/meetRoomBookings/bookingList.php"><i class='bx bxs-book-bookmark'></i>ข้อมูลการจองห้องประชุม</a> -->
            <!-- <a class="sideItem" href="../../pages/meetRoomAccess/checkInCheckOutList.php"><i class='bx bxs-calendar-check'></i>การเข้าใช้งานห้องประชุม</a> -->
            <!-- <a class="sideItem" href="../../pages/foodMenu/foodList.php"><i class='bx bx-bowl-rice'></i>จัดการเมนูอาหาร</a> -->
            <!-- <a class="sideItem" href="../../pages/orderFood/orderFoodList.php"><i class='bx bx-dish'></i>จัดการสั่งอาหาร</a> -->
            <a class="sideItem" href="../../pages/users/userList"><i class='bx bx-user'></i>จัดการข้อมูลสมาชิก</a>
            <details>
                <summary>
                    ตั้งค่าระบบ
                </summary>
                <div class="summaryContent">
                    <!-- <a class="sideItem" href="../../pages/setBankInfo/list.php"><i class='bx bx-wallet'></i>ข้อมูลธนาคาร</a> -->
                    <!-- <a class="sideItem" href="../../pages/meetroomFoodMenu/foodList.php"><i class='bx bxs-bowl-rice'></i>จัดการมื้ออาหาร</a> -->
                    <!-- <a class="sideItem" href="../../pages/facilityInfo/list.php"><i class='bx bxs-playlist'></i>สิ่งอำนวนความสะดวก</a> -->
                    <a class="sideItem" href="../../pages/setRoomType/roomList.php"><i class='bx bx-building'></i>จัดการประเภทห้องพัก</a>
                    <!-- <a class="sideItem" href="#"><i class='bx bx-notepad'></i></i>ข้อมูลเว็บไซต์</a> -->
                    <!-- <a class="sideItem" href="#"><i class='bx bx-slideshow'></i>จัดการคอนเทนต์</a> -->
                    <!-- <a class="sideItem" href="#"><i class='bx bx-street-view'></i>ประวัติการเข้าใช้งาน</a> -->
                </div>
            </details>
            <a class="sideItem" href="../logout.php"><i class='bx bx-power-off'></i>ออกจากระบบ</a>
        </div>
    </div>
</div>
<script>

document.querySelectorAll(".sideItem").forEach((link) => {
    if (link.href === window.location.href) {
        link.classList.add("active");
    }
});
</script>