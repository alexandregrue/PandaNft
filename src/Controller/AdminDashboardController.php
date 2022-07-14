<?php

namespace App\Controller;

use App\Entity\About;
use App\Entity\Description;
use App\Entity\Faq;
use App\Entity\RoadMap;
use App\Entity\Team;
use App\Form\AboutType;
use App\Form\DescriptionType;
use App\Form\FaqType;
use App\Form\RoadMapType;
use App\Form\TeamType;
use App\Repository\AboutRepository;
use App\Repository\DescriptionRepository;
use App\Repository\FaqRepository;
use App\Repository\RoadMapRepository;
use App\Repository\TeamRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;


#[Route('/admindashboard/')]
#[IsGranted('ROLE_ADMIN')]
class AdminDashboardController extends AbstractController
{
    #[Route('', name: 'app_admin_dashboard')]
    public function index(
        DescriptionRepository $descriptionRepository,
        AboutRepository $aboutRepository,
        FaqRepository $faqRepository,
        RoadMapRepository $roadMapRepository,
        TeamRepository $teamRepository
    ): Response
    {
        return $this->render('admin_dashboard/index.html.twig', [
            'descriptions' => $descriptionRepository->findAll(),
            'abouts' => $aboutRepository->findAll(),
            'faqs' => $faqRepository->findAll(),
            'road_maps' => $roadMapRepository->findAll(),
            'teams' => $teamRepository->findAll(),
        ]);
    }

    #[Route('description/{id}/edit', name: 'description_edit', methods: ['GET', 'POST'])]
    public function editDescription(Request $request, Description $description, DescriptionRepository $descriptionRepository): Response
    {
        $form = $this->createForm(DescriptionType::class, $description);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $descriptionRepository->add($description);
            return $this->redirectToRoute('app_admin_dashboard', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('description/edit.html.twig', [
            'description' => $description,
            'form' => $form,
        ]);
    }

    #[Route('about/{id}/edit', name: 'about_edit', methods: ['GET', 'POST'])]
    public function editAbout(Request $request, About $about, AboutRepository $aboutRepository): Response
    {
        $form = $this->createForm(AboutType::class, $about);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $aboutRepository->add($about);
            return $this->redirectToRoute('app_admin_dashboard', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('about/edit.html.twig', [
            'about' => $about,
            'form' => $form,
        ]);
    }

    #[Route('faq/{id}/edit', name: 'faq_edit', methods: ['GET', 'POST'])]
    public function editFaq(Request $request, Faq $faq, FaqRepository $faqRepository): Response
    {
        $form = $this->createForm(FaqType::class, $faq);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $faqRepository->add($faq);
            return $this->redirectToRoute('app_admin_dashboard', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('faq/edit.html.twig', [
            'faq' => $faq,
            'form' => $form,
        ]);
    }

    #[Route('roadmap/{id}/edit', name: 'road_map_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, RoadMap $roadMap, RoadMapRepository $roadMapRepository): Response
    {
        $form = $this->createForm(RoadMapType::class, $roadMap);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $roadMapRepository->add($roadMap);
            return $this->redirectToRoute('app_admin_dashboard', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('road_map/edit.html.twig', [
            'road_map' => $roadMap,
            'form' => $form,
        ]);
    }

    #[Route('team/{id}/edit', name: 'team_edit', methods: ['GET', 'POST'])]
    public function editTeam(Request $request, Team $team, TeamRepository $teamRepository): Response
    {
        $form = $this->createForm(TeamType::class, $team);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $picture = $form->get('picture')->getData();
            if($picture !== null) {
                $pictureRemove = $team->getPicture();
/*                 unlink($this->getParameter('pictures_directory').'/'.$pictureRemove);
 */                $file = md5(uniqid()).'.'.$picture->guessExtension();
                $picture->move(
                $this->getParameter('pictures_directory'),
                $file
            );
            $team->setPicture($file);
            }
            
            $teamRepository->add($team);
            return $this->redirectToRoute('app_admin_dashboard', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('team/edit.html.twig', [
            'team' => $team,
            'form' => $form,
        ]);
    }
}
